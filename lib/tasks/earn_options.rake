desc "Fetch earn titles"
task :fetch_earns => :environment do
  require 'nokogiri'
  require 'open-uri

  Earn.find_all_by_earn(nil).each do |earn|
  	url = "http://www.lifehack.org/articles/money/22-simple-and-creative-ways-earn-money.html"
  	doc = Nokogiri::HTML(open(url))

	puts doc.at_css("title").text
	doc.css(".post-content").each do |post|
	puts post.at_css("h2").text 
end
end