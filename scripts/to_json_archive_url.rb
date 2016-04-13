#! /usr/bin/env ruby

require 'csv'
require 'json'

csv = CSV.open('../archive/url.csv', headers: true)
p csv.map{|row|row.to_h}.to_json
