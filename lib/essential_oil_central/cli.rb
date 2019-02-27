#Our CLI Controller - Where all of the logic is encapsulated.
class EssentialOilCentral::CLI
  attr_accessor  :name, :description, :benefits, :aroma, :uses
    
   def call
        list_oils
        menu
        #exit_program
    end

    #This is basically test code that will be modified later.
    def list_oils
        puts "Welcome to Essential Oil Central"
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
        #@oils is going to be the array of oils that is produced by the 
        #EssentialOilCentral::Oil.collection method
        #@oils = EssentialOilCentral::Oil.collection
        #@oils.each do |oil|
        #  puts "#{oil.name} - DESCRIPTION: #{oil.description} - BENEFITS: #{oil.benefits} - AROMA: #{oil.aroma} - USES: #{oil.uses}"
        end
      end
        
#Be sure to adjust this so that it does not put the else statement when input is "exit"
    def menu
        input = nil
        #@oils = EssentialOilCentral::Oil.all
        while input != "exit"
          puts " Please enter the number 1-12 of the oil you would like to learn more about or type List to list the oils again or type Exit to exit."
          input = gets.strip.downcase
          #The following 2 lines will help us convert the user's input from a string
          #to an integer. It will then allow us to check to see if that integer is
          #between 1-2 for test purposes. Finally, we will be able to access the index of 
          #the @oils array that corresponds to the user's inputted integer -1.
          
          if input.to_i.between?(1,12)
            oil = EssentialOilCentral::Oil.scrape_auracasia[input.to_i-1]
            puts  <<-DOC 
* * * * * * *  #{oil.name} * * * * * * 

DESCRIPTION: #{oil.description}

BENEFITS: #{oil.benefits}

AROMA: #{oil.aroma}

USES: #{oil.uses}

DOC
             #display_oil
            #selected_oil = @oils[input.to_i-1]
            #puts "#{selected_oil.name} - DESCRIPTION: #{selected_oil.description} - BENEFITS: #{selected_oil.benefits} - AROMA: #{selected_oil.aroma} - USES: #{selected_oil.uses}"
          elsif input == "list" 
            list_oils
          elsif input == "exit"
            puts "Farewell! Have a splendid day!"
          elsif 
            puts "I’m sorry. I did not understand your entry."
          end
        end
    end

   #def display_oil
    #  selected_oil = @oils[input.to_i-1]
    #  puts "\|/    #{selected_oil.name}    \|/"
     # puts  <<-DOC 
      #         DESCRIPTION: #{selected_oil.description}
       #        BENEFITS: #{selected_oil.benefits}
       #        AROMA: #{selected_oil.aroma}
       #        USES: #{selected_oil.uses}

      #DOC
   # end
  #end