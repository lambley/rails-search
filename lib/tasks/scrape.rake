require 'nokogiri'
require 'open-uri'
require 'csv'

url = 'https://pokemondb.net/pokedex/national'
data = URI.open(url).read
html = Nokogiri::HTML(data)

result = []
# get name from .infocard-lg-data and first a tag
html.search(".infocard").each do |infocard|
  number = infocard.css(".infocard-lg-data > small").first.text.strip
  name = infocard.css(".infocard-lg-data > a").text.strip
  src = infocard.search(".img-fixed").attribute("data-src").value
  result << [number, name, src]
end

file = "#{Rails.root}/public/pokemon_db.csv"
CSV.open(file, "w") do |writer|
  writer << ["number", "name", "src"]
  result.each do |row|
    writer << row
  end
end
