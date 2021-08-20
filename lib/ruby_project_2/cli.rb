
module RubyProject2
    class CLI 
        def call
            @swimming_school = LearnSwimmingScraper.new 
            puts "Ruby Project 2 CLI started"
            puts "Are you interested to know about Rackley School Free Lessons🏊‍♂️? (Please type either Yes or No)"
            user_option
        end 

        def free_lessons
            SwimSchool
        end 

        def user_option 

            input = gets

            case input.strip
            when "Yes"
                puts @swimming_school.school_desc
                puts "Would you like to pick one of our free lessons for a try? (Type Free for Yes)"
                user_option
            when "Free"
                puts @swimming_school.free_lessons
                puts "You can type 1, 2 or 3 to read more about our free lessons!"
                user_option
            
            when "Op"
                puts @swimming_school.op_hours
            when "Exit"
                exit 
            else 
                input = input.strip.to_i
                case input 
                when 1..3
                    case input 
                    when 1 
                        puts @swimming_school.swimSafety_lesson
                    when 2
                        puts @swimming_school.comeAndTry_lesson
                    when 3
                        puts @swimming_school.babySplash_lesson
                    end 
                    puts "Do you want to check our operating hours? (Type Op for Yes)"
                    user_option   
                else 
                    puts "We would like to hear from you later then!" 
                end 
            end
        end  

    end 
end 