#Our CLI Controller - Where all of the logic is encapsulated.
class EssentialOilCentral::CLI
  attr_accessor  :name, :description, :benefits, :aroma, :uses , :url
    
   def call
       EssentialOilCentral::Scraper.new.scrape_auracasia   
       list_oils
       menu
        
    end

    
    def list_oils
        puts "Welcome to Essential Oil Central"
        EssentialOilCentral::Oil.all.each_with_index do |oil, i|
          puts "#{i +1}.  #{oil.name}"

        end
      end
        

    def menu
        input = nil
      
        while input != "exit"
          puts <<-DOC 
          
Please enter the number 1-12 of the oil you would like to learn about.
Type List to list the oils again or type Exit to exit.
DOC
          input = gets.strip.downcase
          if input.to_i.between?(1,12)
          selected_oil = EssentialOilCentral::Oil.all[input.to_i-1]

            #Adjust the CLI layout to accomodate the various lenghts of oil names
            #check into "COLORIZE" for a nice visual feature
          puts  <<-DOC 
======================  #{selected_oil.name}  ===============================  

Description: #{selected_oil.description}

#{selected_oil.benefits}

#{selected_oil.aroma}

#{selected_oil.uses}

==================================================================================

DOC

        puts "Would you like to read more tips about this oil? Type Yes or No.".black.on_yellow.blink
        input = gets.strip.downcase
          if ["y", "yes"].include?(input) 
            system ("open https://www.auracacia.com#{selected_oil.url}")
          elsif
             list_oils
          end
  
        elsif input == "list" 
          list_oils
        elsif input == "exit"
          puts "Farewell! Have a splendid day!".white.on_light_blue.blink 
        elsif 
            puts "I’m sorry. I did not understand your entry.".blue.on_white.blink
          end
        end
    end

  end