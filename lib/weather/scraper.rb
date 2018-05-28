class Scraper


  def self.scrape_weather
     web_content = open(https://weather.com/weather/today/l/11231:4:US)
     doc = Nokogiri::HTML(web_content)
     weather_content = doc.css('.today_nowcard')
     weather_content.each do |data|
       temp = data.css('.today_nowcard-temp').first.inner_text
       condition = data.css('.today_nowcard-phrase').first.inner_html
  end

  # new_content.css('.today_nowcard').css('.today_nowcard-temp').first.inner_text
  # new_content.css('.today_nowcard').css('.today_nowcard-phrase').first.inner_html
end
