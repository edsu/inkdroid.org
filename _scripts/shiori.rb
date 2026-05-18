#!/usr/bin/env ruby

require 'time'
require 'json'
require 'net/http'
require 'uri'

# A minimally functional class for the Shiori service.
class Shiori
  attr_reader :token

  def initialize(username:, password:)
    @base_url = URI(ENV['SHIORI_URL'])
    @username = username
    @password = password
    @token = login
  end

  def bookmarks(page: 1)
    url = URI.join(@base_url, 'bookmarks')
    url.query = "page=#{page}"
    resp = Net::HTTP.get_response(url, { "Authorization": @token })
    JSON.parse(resp.body)['message']['bookmarks']
  end

  def login
    url = URI.join(@base_url, 'v1/auth/login')
    body = { username: @username, password: @password }
    headers = { 'Content-Type': 'application/json' }
    resp = Net::HTTP.post(url, body.to_json, headers)

    raise 'invalid login' unless resp.code == '200'

    "Bearer #{JSON.parse(resp.body)['message']['token']}"
  end
end

def bookmark_html(bookmark)
  <<~HTML
    <article class="bookmark h-entry">
      <h2>
        🔖
        <a class="h-name" href="#{bookmark['url']}">
          #{bookmark['title']}
        </a>
      </h2>
      <section class="p-summary">
        #{bookmark['excerpt']}
      </section>
    </article>
  HTML
end

shiori = Shiori.new(username: ENV['SHIORI_USERNAME'], password: ENV['SHIORI_PASSWORD'])

now = DateTime.now
bookmarks = shiori.bookmarks.filter do |b|
  created = DateTime.parse(b['createdAt'])
  now - created < 7 && b['public'] == 1
end

if bookmarks.length.positive?
  output = open("_posts/#{now.strftime('%Y-%m-%d-bookmarks.md')}", 'w')
  output.puts <<~HTML
    ---
    layout: post
    title: Weekly Bookmarks
    ---

    These are some things I've wandered across on the web this week.
  HTML

  bookmarks.each do |b|
    output.puts bookmark_html(b)
  end
end
