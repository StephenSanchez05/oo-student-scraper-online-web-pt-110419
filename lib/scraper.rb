require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper


  def self.scrape_index_page(index_url)
    array = {}
    get_page = Nokogiri::HTML(open("#{index_url}"))
    index = get_page.css(".student-card")
    index.each do |student|
      
    
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

Scraper.new.get_page
