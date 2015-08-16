require 'rubygems'
require 'nokogiri'
require 'open-uri'

url = "http://www.lifehack.org/articles/money/22-simple-and-creative-ways-earn-money.html"
doc = Nokogiri::HTML(open(url))
puts doc.at_css("title").text
doc.css(".post-content").each do |post|
	puts post.at_css("h2").text 
	
end