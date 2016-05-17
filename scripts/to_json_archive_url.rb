#! /usr/bin/env ruby

require 'csv'
require 'json'

puts JSON.pretty_generate(CSV.open('../archive/url.csv', headers: true).map(&:to_h))
