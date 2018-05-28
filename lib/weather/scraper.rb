class Scraper


  def self.scrape_weather

    doc = Nokogiri::HTML(open(https://weather.com/weather/today/l/11231:4:US))    
  end
end
