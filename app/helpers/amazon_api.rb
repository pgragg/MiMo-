require 'net/http'
require 'json'


def search(term, amount)
  url = URI.parse('http://45.55.76.70/search/'+term)
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
  }
  return res.body[0..(amount-1)]
end

def price(item, amount)
  item.gsub! "http://www.amazon.com/",""
  url = URI.parse('http://45.55.76.70/price/'+item)
  req = Net::HTTP::Get.new(url.to_s)
  res = Net::HTTP.start(url.host, url.port) {|http|
    http.request(req)
  }
  return res.body[0..(amount-1)]
end

def search_for(param, amount)
  data = search(param, amount)
  @list = JSON.parse(data)
end 

#Implementation
# data = search("fridge")
# list = JSON.parse(data)
# puts list