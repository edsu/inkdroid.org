#!/usr/bin/env ruby

require 'time'
require 'json'
require 'net/http'
require 'uri'

class Shiori
  attr_reader :token

  def initialize(username:, password:)
    @base_url = URI(ENV["SHIORI_URL"])
    @username = username
    @password = password
    @token = login
  end

  def bookmarks(page: 1)
    url = @base_url + "bookmarks"
    url.query = "page=#{page}"
    resp = Net::HTTP.get_response(url, {"Authorization": @token})
    return JSON.parse(resp.body)['message']['bookmarks']
  end

  def login
    url = @base_url + "v1/auth/login"
    body = { username: @username, password: @password }
    headers = {'Content-Type': 'application/json'}
    resp = Net::HTTP.post(url, body.to_json, headers)

    if resp.code == "200"
      "Bearer " + JSON.parse(resp.body)['message']['token']
    else
      raise "invalid login"
    end
  end
end

def bookmark_html(b)
  <<-html
<article class="bookmark h-entry">
  <h2>
    🔖
    <a class="h-name" href="#{b['url']}">
      #{b["title"]}
    </a>
  </h2>
  <section class="p-summary">
    #{b["excerpt"]}
  </section>
</article>
html
end

shiori = Shiori.new(username: ENV['SHIORI_USERNAME'], password: ENV['SHIORI_PASSWORD'])

now = DateTime.now
bookmarks = shiori.bookmarks.filter do |b|
  created = DateTime.parse(b['createdAt'])
  now - created < 7 && b['public'] == 1
end

if bookmarks.length > 0
  output = open("_posts/#{now.strftime('%Y-%m-%d-bookmarks.md')}", "w")
  output.write <<html
---
layout: post
title: Weekly Bookmarks
---

These are some things on the web I've wandered across this week.

html

  bookmarks.each do |b|
    output.write(bookmark_html(b) + "\n")
  end
end
