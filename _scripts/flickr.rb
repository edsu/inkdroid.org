#!/usr/bin/env ruby

require 'cgi'
require 'json'
require 'open-uri'
require 'pathname'

# Convert a Flickr post to a Jekyll post.
class Post
  attr_accessor :date, :title, :url, :image_url

  def initialize(item)
    @date = DateTime.parse(item['date_taken'])
    @title = item['title']
    @url = item['link']
    @image_url = item['media']['m'].sub(/m\.jpg/, 'c.jpg')
  end

  def markdown
    <<~YAML
      ---
      layout: post
      title: #{@title}
      tags:
        - photographs
        - flickr
      ---

      <a href="#{url}">
        <img src="#{@image_url}">
      </a>
    YAML
  end

  def normalized_title
    @title.downcase.gsub(' ', '-')
  end

  def normalized_date
    @date.strftime('%Y-%m-%d')
  end

  def path
    Pathname('_posts') + "#{normalized_date}-#{normalized_title}.md"
  end

  def write
    path.open('w').write(markdown)
  end
end

# Read the Flickr API JSON feed and create posts for public items

url = 'https://www.flickr.com/services/feeds/photos_public.gne?id=17762186@N00&format=json&nojsoncallback=1'
feed = JSON.parse(URI.parse(url).read)
feed['items'].each do |item|
  post = Post.new(item)

  # ignore posts without a title
  next if post.title =~ /^[0-9_]+$/

  # ignore posts we've seen before
  next if post.path.file?

  post.write
end
