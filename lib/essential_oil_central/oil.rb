#Code to create each oil object and set attributes and descriptions. 
class EssentialOilCentral::Oil 
  attr_accessor  :name, :description, :benefits, :aroma, :uses, :url

  @@all = [] 

  def initialize
    @@all << self
  end

  def self.all
    @@all
  end 


end