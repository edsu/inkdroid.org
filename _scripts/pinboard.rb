#!/usr/bin/env ruby

require 'json'
require 'open-uri'
require 'pathname'
require 'liquid'
require 'dotenv'

Dotenv.load

# Convert a Flickr post to a Jekyll post.
class Post
  attr_accessor :date, :title, :url, :note, :tags

  def initialize(item)
    @date = DateTime.parse(item['dt'])
    @title = item['d']
    @url = item['u']
    @note = item['n']
    @tags = item['t'] || []
  end

  def write
    path.open('w').write(markdown)
  end

  def quote?
    @note && @note.match(/<blockquote>/)
  end
  
  def markdown
    template.render!({
      'title' => @title,
      'url' => @url,
      'note' => @note,
      'tags' => @tags
    }, strict_variables: true)
  end

  def template
    @template ||= Liquid::Template.parse(
      <<~MARKDOWN
      ---
      layout: post
      title: #{title}
      tags:
        {%- for tag in tags %}
        - {{ tag }}
        {%- endfor %}
        - pinboard
      ---

      #{ @note }

      <a href="#{url}">{{ title }}</a>
      MARKDOWN
    )
  end

  def path
    Pathname('_posts') + "#{normalized_date}-#{normalized_title}.md"
  end

  def normalized_title
    @title.downcase.gsub(/ +/, '-').gsub(/[^a-z0-9\-]/i, '')
  end

  def normalized_date
    @date.strftime('%Y-%m-%d')
  end

end

# Read the Flickr API JSON feed and create posts for public items

pinboard_key = ENV['PINBOARD_KEY']
abort 'no PINBOARD_KEY defined!' unless pinboard_key

url = "https://feeds.pinboard.in/json/#{pinboard_key}/u:edsu/t:quote/"
feed = JSON.parse(URI.parse(url).read)
feed.each do |item|
  post = Post.new(item)

  next unless post.quote?
  post.write
end
