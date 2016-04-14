#! /usr/bin/env ruby

require 'csv'
require 'json'

p CSV.open('../archive/url.csv', headers: true).map(&:to_h).to_json
