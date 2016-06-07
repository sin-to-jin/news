#! /usr/bin/env ruby

require 'net/http'
require 'uri'
require 'json'

GITHUB_USER_API_URL = 'https://api.github.com/user/'.freeze

def self.request_github_user(user_id)
  unless user_id.nil?
    JSON.parse(Net::HTTP.get(URI.parse("#{GITHUB_USER_API_URL}#{user_id}")))['login']
  end
end

ARGV.length.times do |i|
  user_id = ARGV[i]
  puts request_github_user(user_id) if /^[0-9]+$/ =~user_id
end
