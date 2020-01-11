require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper


  def self.scrape_index_page(index_url)
    array = []
    get_page = Nokogiri::HTML(open(index_url))
    get_page.css("div.roster-cards-container").each do |student|
      student.css(".student-card a").each do |student|
      student_name = student.css(".student-name").text
      student_location = student.css(".student-location").text
      student_profile = "#{student.attr('href')}"
      array << {name: student_name, location: student_location, profile_url: student_profile}
    end
  end

  array
  end
  
  def self.scrape_profile_page(profile_url)
    
  end

end


