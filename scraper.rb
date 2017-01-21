require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "https://www.walmart.com/search/?query=nest"

doc = Nokogiri::HTML(open(url))

puts doc.at_css("title").text

doc.css(".tile-landscape").each do |item|
title=  item.at_css(".js-product-title").text
price = item.at_css(".price-display").text
puts "#{title} - #{price}"
puts item.at_css(".js-product-title")[:href]
end
