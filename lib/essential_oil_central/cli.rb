#Our CLI Controller - Where all of the logic is encapsulated.
class EssentialOilCentral::CLI
  attr_accessor  :name, :description, :benefits, :aroma, :uses , :url
    
   def call
       EssentialOilCentral::Scraper.new.scrape_auracasia   
        list_oils
        menu
        #exit_program
    end

    #This is basically test code that will be modified later.
    def list_oils
        puts "Welcome to Essential Oil Central"
        EssentialOilCentral::Oil.all.each_with_index do |oil, i|
          puts "#{i +1}.  #{oil.name}"

        end
      end

    #def more_info_in_browser
    
    #end
        

    def menu
        input = nil
      
        while input != "exit"
          puts " Please enter the number 1-12 of the oil you would like to learn more about or type List to list the oils again or type Exit to exit."
          input = gets.strip.downcase
          #The following lines will help us convert the user's input from a string
          #to an integer. It will then allow us to check to see if that integer is
          #between 1-12 for test purposes. Finally, we will be able to access the index of 
          #the @oils array that corresponds to the user's inputted integer -1.
          
          #if input.to_i-1 <= EssentialOilCentral::Oil.all.length
          if input.to_i.between?(1,12)
            #oil = EssentialOilCentral::Oil.scrape_auracasia[input.to_i-1]
            selected_oil = EssentialOilCentral::Oil.all[input.to_i-1]
            puts  <<-DOC 
======================  #{selected_oil.name}  ===============================  

Description: #{selected_oil.description}

#{selected_oil.benefits}

#{selected_oil.aroma}

#{selected_oil.uses}

==================================================================================
DOC
          
          elsif input == "list" 
            list_oils
          #elsif input == "more"
          # more_info_in_browser
          elsif input == "exit"
            puts "Farewell! Have a splendid day!"
          elsif 
            puts "I’m sorry. I did not understand your entry."
          end
        end
    end

  end