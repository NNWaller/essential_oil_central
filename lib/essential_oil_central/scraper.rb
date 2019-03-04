#Code to scrape the web page. Only for scraping. 
require 'pry'
require 'nokogiri'
require 'open-uri'

#Get the data for each oil on the auracasia site and instantiate an oil

class EssentialOilCentral::Scraper
    
    def scrape_auracasia
      @doc = Nokogiri::HTML(open("https://www.auracacia.com/community/essential-oil-must-haves"))
      @doc.css(".col-md-16").each do |oil_col|
        oil = EssentialOilCentral::Oil.new 

        oil.name = oil_col.css("h2").text
        oil.description = oil_col.css("p:nth-of-type(1)").text
        oil.benefits = oil_col.css(":nth-child(3)").text
        oil.aroma = oil_col.css(":nth-child(5)").text
        oil.uses = oil_col.css(":nth-child(7)").text
        oil.url = oil_col.css("p.feature-link [href]")
        #oil.url = oil_col.css("p:nth-of-type(2) [attr ="href"])
        #oil.url = oil_col.css("p:nth-of-type(2)")[0]
        #oil.url = oil_col.css("href")[0]
        #oil.url = oil_col.css(".feature-link").attr("href")
        #oil.url = oil_col.css("a:nth-of-type(1)")
        
        oil.save
        binding.pry
      end
    end

end