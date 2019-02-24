#Code to create each oil object and set attributes and descriptions. 
class EssentialOilCentral::Oil 
  attr_accessor  :name, :description, :benefits, :aroma, :uses

#@@all = [] 

  def self.collection
  #This should return the entire collection of oil instances 
    puts <<-DOC
        1. Lavender
        2. Frankincense
        3. Peppermint
        4. Eucalyptus
        5. Tea Tree
        6. Grapefruit
        7. Rosemary
        8. Lemon
        9. Sweet Orange
        10. Patchouli
        11. Bergamot
        12. Lemongrass
        DOC
        oil_1 = self.new
        oil_1.name = "Lavender"
        oil_1.description = "The most popular essential oil because of its versatility and well-liked floral, herbal aroma, lavender can be used in a variety of ways to inspire calm and relaxation."
        oil_1.benefits = "Calming, relaxing"
        oil_1.aroma = "Floral, herbal"
        oil_1.uses = "Body oils, massage oils, cleansers, lotions, creams, body mists, perfumes, shampoos, conditioners, hair masks, hair serums, hair mists, room mists, diffusions "
     
        oil_2 = self.new
        oil_2.name = "Frankincense"
        oil_2.description = "Used extensively in incense and fine perfumes for thousands of years, frankincense essential oil is characterized by a resinous aroma and can bring a calming benefit to body care, diffusion and air freshening as well as grounding practices like meditation or yoga."
        oil_2.benefits = "Meditative, grounding, calming"
        oil_2.aroma = "Resinous, balsamic"
        oil_2.uses = "Body oils, massage oils, body mists, perfumes, room mists, diffusions, meditation roll-ons and mists, yoga mists."
       [oil_1, oil_2]   
  end

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

 #We will need something to interact with the CLI where the user can enter a number
 #and the appropriate oil type is displayed. The number they enter will need to be 
 #converted to an integer from a string and it will need to be reduced by 1 in order 
 #to access the appropriate index number for that oil type from the @@all array 
 #of oils
 # Like this...
 #def self.find(id)
 #  @@all[id.to_i-1]
 #end



end 