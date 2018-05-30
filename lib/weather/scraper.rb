require 'nokogiri'
require 'open-uri'
require 'pry'


class Scraper


  def self.scrape_weather
     web_content = open(https://weather.com/weather/today/l/11231:4:US)
     doc = Nokogiri::HTML(web_content)
     weather_content = doc.css('.today_nowcard')
     weather_content.each do |data|
       temp = data.css('.today_nowcard-temp').first.inner_text
       condition = data.css('.today_nowcard-phrase').first.inner_html
       feels_temp = data.css('.today_nowcard-feels').first.inner_text
  end

  # new_content.css('.today_nowcard').css('.today_nowcard-temp').first.inner_text
  # new_content.css('.today_nowcard').css('.today_nowcard-phrase').first.inner_html
  # new_content.css('.today_nowcard').css('.today_nowcard-feels').first.inner_text
  # hilo and uv index = new_content.css('.today_nowcard').css('.today_nowcard-hilo').first.inner_text
  # contains humidity, dew point, pressure, visibility may need to iterate over this and separate and put back together
  # new_content.css('.today_nowcard').css('.today_nowcard-sidecar').first.inner_text
  # new_content.css('.today_nowcard').css('.today_nowcard-sidecar').css('tr').first.text
  # (winds 7 mph)
  # new_content.css('.today_nowcard').css('.today_nowcard-sidecar').css('tr').collect do |item| item.text
  # gives me -  ["WindS 7 mph ", "Humidity73%", "Dew Point56°", "Pressure30.05 in ", "Visibility10.0 mi"]
  # .split(/(?<=\d)(?=[A-Za-z])/)
  # new_content.css('.today_nowcard').css('.today_nowcard-sidecar').css('tr').css('th').collect do |item| item.text
  # new_content.css('.today_nowcard').css('.today_nowcard-sidecar').css('tr').css('td').collect do |item| item.text
end
