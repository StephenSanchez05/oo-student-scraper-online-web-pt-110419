require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper

  def get_page
    html = Nokogirir::HTML(open("https://learn-co-curriculum.github.io/student-scraper-test-page/index.html"))
    
    binding.pry 
  end
  

  def self.scrape_index_page(index_url)
    
    
    
  end

  def self.scrape_profile_page(profile_url)
    
  end

end

Scraper.new.get_page
