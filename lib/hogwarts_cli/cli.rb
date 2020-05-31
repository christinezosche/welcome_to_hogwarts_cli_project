class CLI

    def run
        API.get_houses
        main
    end

    def main
        puts "Welcome to Hogwarts, first-year! To proceed to the Great Hall for the Sorting Ceremony, enter 'Let's go!' To leave Hogwarts, enter 'Take me home!'"

        input = gets.chomp

        if input == "Let's go!"
            sort
        elsif input == "Take me home!"
            early_exit
        else
            error
            main
        end
    end


    def sort
        sorted_house = House.all.sample
        puts "You're in #{sorted_house.name}!"
        more_house_info(sorted_house)
    end

    def more_house_info(sorted_house)
        puts "Would you like more information on your house? Enter 'yes' or 'no'."
        input = gets.chomp
        if input == 'yes'
            get_house_info(sorted_house)
        elsif input == 'no'
            another_house_info(sorted_house)
        else
            error
            more_house_info(sorted_house)
        end
    end

    def get_house_info(sorted_house)
        puts "Name: #{sorted_house.name}"
        puts "Colors: #{sorted_house.colors}"
        puts "Mascot: #{sorted_house.mascot}"
        puts "Head of House: #{sorted_house.head_of_house}"
        puts "Values: #{sorted_house.values}"
        puts "Ghost: #{sorted_house.ghost}"
        puts "Founder: #{sorted_house.founder}"
        another_house_info(sorted_house)
    end

    def another_house_info(sorted_house)
        puts "Would you like information on another house? Y/N"
        input = gets.chomp
        if input == 'Y'
            get_another_house_info(sorted_house)
        elsif input == 'N'
            normal_exit(sorted_house)
        else
            error
            another_house_info(sorted_house)
        end
    end

    def get_another_house_info(sorted_house)
        puts "Please choose a house: Gryffindor, Hufflepuff, Ravenclaw, or Slytherin."
        input = gets.chomp
        if input == "Gryffindor" || "Hufflepuff" || "Ravenclaw" || "Slytherin"
            h = House.all.find{|house| house.name == input}
            puts "Name: #{h.name}"
            puts "Colors: #{h.colors}"
            puts "Mascot: #{h.mascot}"
            puts "Head of House: #{h.head_of_house}"
            puts "Values: #{h.values}"
            puts "Ghost: #{h.ghost}"
            puts "Founder: #{h.founder}"
        else
            error
            get_another_house_info(sorted_house)
        end
        another_house_info(sorted_house)
    end
    
    def early_exit
        puts "We'll miss you this term. Enjoy your ride on the Hogwarts Express!"
        exit
    end

    def normal_exit(sorted_house)
        puts "Have a great term, #{sorted_house.name}!"
        exit
    end

    def error
        puts "Sorry, we don't understand that muggle term."
    end


end
