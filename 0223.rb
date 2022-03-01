require "nokogiri"
require "open-uri"
require "json"

#https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7

# html = JSON.parse(open("hhttps://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7"))
# doc = Nokogiri::HTML.parse(html)
# doc.css("sna:").each do |youbike|
#    puts youbike{"sna"}


books = Nokogiri::HTML(URI.open('https://www.tenlong.com.tw/zh_tw/recent_bestselling?range=7'))
# books.css(".single-book > .title > a",".single-book > .pricing > del").each do |book|
#  puts "#{book.content}"
# end

book_name = books.css(".single-book > .title > a")
book_pricing = books.css(".single-book > .pricing > del")
# book_link = books.css(".single-book > .title > .a > href")

count = 0
while book_name[count] != nil
    puts "這本「#{book_name[count].content}」的原價為#{book_pricing[count].content}"
    count += 1
end
p book_link[1].content
