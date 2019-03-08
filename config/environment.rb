#This is where you will require all of your required files to make the program run. 
#Your console and your essential_oil_central files in bin will be dependent on this 
#environment file instead of individual files
#Try these with one dot 3/6

require "open-uri" 
require "nokogiri" 
require "colorize"


require_relative "../lib/essential_oil_central/version" 
require_relative "../lib/essential_oil_central/scraper" 
require_relative "../lib/essential_oil_central/oil" 
require_relative "../lib/essential_oil_central/cli" 

