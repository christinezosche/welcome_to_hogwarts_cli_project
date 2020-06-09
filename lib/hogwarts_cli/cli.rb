class CLI

    def run
        API.get_houses
        main
    end

    def main
        puts "Welcome to Hogwarts, first-year!" 
        sleep 1
        puts "To proceed to the Great Hall for the Sorting Ceremony, enter 'Let's go!'"
        sleep 1
        puts "To leave Hogwarts, enter 'Take me home!'"

        input = gets.chomp

        if input == "Let's go!"
            sleep 1
            sort
        elsif input == "Take me home!"
            sleep 1
            early_exit
        else
            sleep 1
            error
            main
        end
    end

    def sort
        @sorted_house = House.all.sample
        print "You're in" 
        sleep 1 
        3.times do 
            print "." 
            sleep 1 
        end
        print "#{@sorted_house.name}!" "\n"
        sleep 2
        more_house_info
    end

    def more_house_info
        puts "Would you like more information on your house? Enter 'Yes' or 'No'."
        input = gets.chomp
        if input == 'Yes'
            print_house_info(@sorted_house)
            another_house_info
        elsif input == 'No'
            sleep 1
            another_house_info
        else
            sleep 1
            error
            more_house_info
        end
    end

    def print_house_info(house)
        sleep 1
        puts "Founder: #{house.founder}"
        sleep 1
        puts "Colors: #{house.colors}"
        sleep 1
        puts "Mascot: #{house.mascot}"
        sleep 1
        puts "House Ghost: #{house.ghost}"
        sleep 1
        puts "Head of House: #{house.head_of_house}"
        sleep 1
        puts "Values: #{house.values}"
        sleep 2
    end

    def another_house_info
        puts "Would you like information on another house? Enter 'Yes' or 'No'."
        input = gets.chomp
        if input == 'Yes'
            get_another_house_input
        elsif input == 'No'
            sleep 1
            normal_exit
        else
            sleep 1
            error
            another_house_info
        end
    end

    def get_another_house_input
        puts "Please choose a house: Gryffindor, Hufflepuff, Ravenclaw, or Slytherin."
        input = gets.chomp
        if input == "Gryffindor" || input == "Hufflepuff" || input == "Ravenclaw" || input == "Slytherin"
            house = House.all.find{|house| house.name == input}
            print_house_info(house)
        else
            sleep 1
            error
            get_another_house_input
        end
        another_house_info
    end
    
    def early_exit
        puts "We'll miss you this term. Enjoy your ride on the Hogwarts Express!"
        exit
    end

    def normal_exit
        puts "Have a great term, #{@sorted_house.name}!"
        exit
    end

    def error
        puts "Sorry, we don't understand that muggle phrase."
        sleep 2
    end

end
