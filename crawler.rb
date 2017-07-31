require 'nokogiri'
require 'open-uri'

# Let's try to fetch and parse HTML document

books = Nokogiri::HTML(open('http://www.books.com.tw/activity/gold66_day/?loc=activity_BK_001'))

puts "### Search for nodes by css with Bookstore"
books.css('div.sec_day h2:nth-child(3)' ).each do |link|
    puts link.content.to_s.gsub(/[^0-9]/, '')
end
