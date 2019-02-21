#Code to create each oil object and set attributes and descriptions. 
class EssentialOilCentral::Oil 
#attr_accessor  :benefit, :aroma, :uses
#attr_reader :name, :description

#@@all = [] 

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
end 