#Our CLI Controller - Where all of the logic is encapsulated.
class EssentialOilCentral::CLI
    def call
        puts "Welcome to Essential Oil Central"
        list_oils
    end

    #This is basically test code that will be modified later.
    def list_oils
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
        

end 