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

    def early_exit
        puts "We'll miss you this term. Enjoy your ride on the Hogwarts Express!"
        exit
    end

    def error
        puts "Sorry, we don't understand that muggle term."
    end


end
