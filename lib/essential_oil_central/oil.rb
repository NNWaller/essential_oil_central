#Code to create each oil object and set attributes and descriptions. 
#Find out if you need to instantiate the oils and add an initialize method or not
class EssentialOilCentral::Oil 
  attr_accessor  :name, :description, :benefits, :aroma, :uses, :url

 @@all = [] 

def self.all
  @@all
end 

def save
  @@all << self

end

#Try to add a feature where the user can obtain additional info about the 
#oil by typing "more" and the system will open an oil-specific link in the browser!
#def open_in_browser
 # system("open '#{url}'")
  #binding.pry
#end 




#This code should add each oil instance to the @@all variable
#def initialize
#  @@all << self

#end



   

#I would like to find out how to use the .send method to assign the remaining 
#attributes to each oil object

#Object
 #attributes.each do |attribute_name, attribute_value|
 #self.send("#{attribute_name}=", attribute_value)
 #end

end