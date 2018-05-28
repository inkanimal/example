class Scraper


  def self.scrape_weather
     web_content = open(https://weather.com/weather/today/l/11231:4:US)
     doc = Nokogiri::HTML(web_content)
     weather_content = doc.css('.today_nowcard')

    doc.css('.today_nowcard-container').each do |conditions|
  end

  new_content.css('.today_nowcard').css('.today_nowcard-temp').first.inner_text
end
