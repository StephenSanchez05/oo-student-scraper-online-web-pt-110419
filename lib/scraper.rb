require 'open-uri'
require 'pry'
require 'nokogiri'

class Scraper


  def self.scrape_index_page(index_url)
    array = []
    get_page = Nokogiri::HTML(open(index_url))
    get_page.css(".student-card").each do |student|
      student_name = student.css("h4").text
      student_location = student.css("p").text
      profile_url = "NY"
      array << {name: student_name, location: student_location, profile_url: student_profile}
    end
  end
  array
  end

end


