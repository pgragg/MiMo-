class ListSubcategory < ActiveRecord::Base
  belongs_to :list_category

  require 'net/http'
  require 'json'


  def self.search(term)
    url = URI.parse('http://45.55.76.70/search/'+term)
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    return res.body
  end

  def self.price(item)
    item.gsub! "http://www.amazon.com/",""
    url = URI.parse('http://45.55.76.70/price/'+item)
    req = Net::HTTP::Get.new(url.to_s)
    res = Net::HTTP.start(url.host, url.port) {|http|
      http.request(req)
    }
    return res.body
  end

  def self.search_for(param)
    data = search(param)
    @list = JSON.parse(data)
  end 
end
