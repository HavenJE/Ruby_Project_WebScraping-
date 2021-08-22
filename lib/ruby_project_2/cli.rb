
module RubyProject2
    class CLI 
        def call
            @swimming_school = LearnSwimmingScraper.new 
            puts "=========================================================================="
            puts "Welcome to our Swim Teaching School 🏊‍♂️! If you would like to navigate thourgh our School information and read what we offer to your lovely children, then please follow our prompts: "
            puts "=========================================================================="
            puts "Type Yes to read about what would you expect from our School!"
            puts "Type Free to learn about our lessons!"
            puts "Type 1, 2 or 3 to read about your lessson of interest!"
            puts "Type Op for our operating hours!"
            puts "Type Exit to exit our School portal!"
            puts "=========================================================================="
            puts "Now, are you interested to know about our Swim School? (Please type either Yes or No)"
            user_option
        end 

        def free_lessons
            SwimSchool
        end 

        def user_option 

            input = gets

            case input.strip
            when "Yes"
                puts "=========================================================================="
                puts @swimming_school.school_desc
                puts "=========================================================================="
                puts "Would you like to pick one of our free lessons for a try? (Type Free for Yes)"
                user_option
            when "Free"
                puts "***************************************************************************"
                puts @swimming_school.free_lessons
                puts "***************************************************************************"
                puts "You can type 1, 2 or 3 to read more about our free lessons!"
                user_option
            
            when "Op"
                puts "=========================================================================="
                puts @swimming_school.op_hours
                puts "=========================================================================="
            when "Exit"
                exit 
            else 
                input = input.strip.to_i
                case input 
                when 1..3
                    case input 
                    when 1 
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                        puts @swimming_school.swimSafety_lesson
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                    when 2
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                        puts @swimming_school.comeAndTry_lesson
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                    when 3
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                        puts @swimming_school.babySplash_lesson
                        puts "===================🏊🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♂️🏊‍♀️🏊‍♂️🏊‍♂️🏊‍♂️🏊=================="
                    end 
                    puts "Do you want to check our operating hours? (Type Op for Yes)"
                    user_option   
                else 
                    puts "=========================================================================="
                    puts "We would like to hear from you later then!" 
                end 
            end
        end  

    end 
end 


