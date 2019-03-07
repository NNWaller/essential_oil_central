#require_relative "../config/environment" 
#Figure out how to move all this to environment.rb
require "open-uri"
require "nokogiri"
require "pry"  #Remove this before you publish the gem!!!!!
require_relative "./essential_oil_central/version"
require_relative "./essential_oil_central/scraper"
require_relative "./essential_oil_central/oil"
require_relative "./essential_oil_central/cli"

#Keep in mind that you will need to simply move all of this code into your 
#config/environment file and simply require the environment file here! 