#Code to create each oil object and set attributes and descriptions. 
class EssentialOilCentral::Oil 
  attr_accessor  :name, :description, :benefits, :aroma, :uses

@@all = [] 

def self.all
  @@all
end 

def save
  @@all << self

end



#This code should add each oil instance to the @@all variable
#def initialize
#  @@all << self

#end

#def self.all
  #@@all
#end 

  #def self.collection
    #This method now needs to scrape the website and return real objects
  #This should return the entire collection of oil instances 
  #self.scrape_oils #returns the array of oil objects that are created by the 
                   #scrape_auracasia method. It should really be changed to be a 
                   #self.all method to return the entire @@all collection of oil
                   #objects
    
   #puts <<-DOC
       # 1. Lavender
       # 2. Frankincense
       # 3. Peppermint
       # 4. Eucalyptus
       # 5. Tea Tree
       # 6. Grapefruit
       # 7. Rosemary
       # 8. Lemon
       # 9. Sweet Orange
       # 10. Patchouli
       # 11. Bergamot
       # 12. Lemongrass
        #DOC
        #oil_1 = self.new
       #oil_1.name = "Lavender"
        #oil_1.description = "The most popular essential oil because of its versatility and well-liked floral, herbal aroma, lavender can be used in a variety of ways to inspire calm and relaxation."
       # oil_1.benefits = "Calming, relaxing"
       # oil_1.aroma = "Floral, herbal"
       # oil_1.uses = "Body oils, massage oils, cleansers, lotions, creams, body mists, perfumes, shampoos, conditioners, hair masks, hair serums, hair mists, room mists, diffusions "
     
       # oil_2 = self.new
       # oil_2.name = "Frankincense"
        #oil_2.description = "Used extensively in incense and fine perfumes for thousands of years, frankincense essential oil is characterized by a resinous aroma and can bring a calming benefit to body care, diffusion and air freshening as well as grounding practices like meditation or yoga."
       # oil_2.benefits = "Meditative, grounding, calming"
       # oil_2.aroma = "Resinous, balsamic"
       # oil_2.uses = "Body oils, massage oils, body mists, perfumes, room mists, diffusions, meditation roll-ons and mists, yoga mists."
       #[oil_1, oil_2]   
  #end

  #def self.scrape_oils
  #  @oils = [ ]
   # @oils << self.scrape_auracasia
    #Go to website
    #extract the oils and their properties
    #instantiate an oil object 
    #end up with an array of oil objects that can be operated on individually
  #  @oils
  #end

  #def self.scrape_auracasia
   #@oils = [ ]
    #doc = Nokogiri::HTML(open("https://www.auracacia.com/community/essential-oil-must-haves"))
   #binding.pry

   #names_array = 
#******************************************
   #NOTE: The following code gives me the exact string I need for the lavender details. 
   #I need to find a way to access each index of the array in order to capture oil
   #details for each oil!! How can I iterate over this array and access each index??
   #description_string = doc.css(".col-xs-16 p:nth-of-type(odd)")[0].text
   #binding.pry

#****************************************
#NOTE: The follwoing two lines of code work to convert the benefits string to an array
   #benefits_array = doc.css(".col-xs-16 :nth-child(3)").text.split("Benefit: ")
  #benefits_array -= [""]
  #benefits_array = doc.css(".col-xs-16 :nth-child(3)").text.gsub("\Benefit:","")
  #benefits_array = doc.css(".col-xs-16 :nth-child(3)").text
   #binding.pry

  # aromas_array = 

   #uses_array = 



    #doc.css(".col-xs-16").each do |column|
      #oil = self.new
      #oil.name = column.css("h2").text
      #oil.description = column.css.first.attr("p:nth-of-type(odd)")
     # oil.benefits = column.css.first.attr(":nth-child(3)")
     # oil.aroma = column.css(":nth-child(5)").text
      #oil.uses = column.css(":nth-child(7)").text
    # @oils << oil
     #@oils
    #binding.pry
   # end

 #end


#Each type of oil will need to be initialized with a name and description
  #def initialize (name, description)
   # @name = name
    #@description = description

#I would like to find out how to use the .send method to assign the remaining 
#attributes to each oil object

#Object
 #attributes.each do |attribute_name, attribute_value|
 #self.send("#{attribute_name}=", attribute_value)
 #end

end