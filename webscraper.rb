require 'open-uri'
require 'rubygems'
require 'nokogiri' 

doc = Nokogiri::HTML(open("https://www.google.com/search?q=rainbow+six+siege&client=ubuntu&hs=f2l&source=lnms&tbm=isch&sa=X&ved=2ahUKEwj8sdLp6pznAhXP1FkKHToMAOEQ_AUoA3oECAwQBQ&biw=1920&bih=921"))


#print doc
#print doc.css("div#viewport")[0]
#print doc.css("table")[4]

images = doc.css("table")[4]
for i in 0..10 do
    print images.css("a").css("img")[i]['src']
    print "\n"
end
#print doc.css("table")[4].css("a").css("img")[0]['src']
