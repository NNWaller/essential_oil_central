#Our CLI Controller - Where all of the logic is encapsulated.
class EssentialOilCentral::CLI
    def call
        list_oils
        menu
        exit_program
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
    end

    #We wish we could have this to work
    #@oils = EssentialOilCentral::Oil.collection that would return the entire 
    #collection of all the oils
        
#Be sure to adjust this so that it does not put the else statement when input is "exit"
    def menu
        input = nil
        while input != "exit"
          puts " Please enter the number 1-12 of the oil you would like to learn more about or type List to list the oils again or type Exit to exit."
          input = gets.strip.downcase
          case input
          when "1"
            puts "lavender info"
          when "2"
            puts "frankincense info"
          when "list"
            list_oils
          else 
            puts "I’m sorry. I did not understand your entry."
          end
        end
    end

     def exit_program
        puts "Farewell! Have a splendid day!"
     end
end 