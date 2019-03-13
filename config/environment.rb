#This is where you will require all of your required files to make the program run. 

require "bundler/setup"
require "essential_oil_central" 

require "open-uri" 
require "nokogiri" 
require "colorize"


require_relative "../lib/essential_oil_central/version" 
require_relative "../lib/essential_oil_central/scraper" 
require_relative "../lib/essential_oil_central/oil" 
require_relative "../lib/essential_oil_central/cli" 

