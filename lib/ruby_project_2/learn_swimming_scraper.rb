
module RubyProject2
    class LearnSwimmingScraper

        def school_page
            url = "https://www.rackleyswimming.com.au/parkwood"
            uri = URI.parse(url)
            parsed_page = Nokogiri::HTML(uri.open)
        end

        def school_desc 
            desc = school_page

            desc.css('div.w-full p:nth-child(odd)').text.strip  
        end 

        def op_hours 
            hours = school_page

            hours.css('ul.mt-5').map do |hour|
                hour.text.strip
            end 
        end

        def free_lessons 

            url = "https://www.rackleyswimming.com.au/free-swim-safety-check"
            uri = URI.parse(url)
            parsed_page = Nokogiri::HTML(uri.open)

            lessons = parsed_page.css('div.w-full.px-20.bg-blue-600.text-white.text-center a') 
            lessons.map do |lesson|
                lesson.text.strip 
                # lesson.attributes["href"].value
            end
        end 

        def swimSafety_lesson 

            url = "https://www.rackleyswimming.com.au/free-swim-safety-check"
            uri = URI.parse(url)
            parsed_page = Nokogiri::HTML(uri.open)
            
            contents = parsed_page.css('div.content.text-gray-700 p:nth-child(-n+7)')
            contents.map do |content|
                content.text.strip
            end 
        end 

        def comeAndTry_lesson

            url = "https://www.rackleyswimming.com.au/free-come-try-swim-lessons"
            uri = URI.parse(url)
            parsed_page = Nokogiri::HTML(uri.open)
            
            contents = parsed_page.css('div.content.text-gray-700 p:nth-child(-n+7)')
            contents.map do |content|
                content.text.strip
            end 
        end 

        def babySplash_lesson

            url = "https://www.rackleyswimming.com.au/free-baby-splash-swim-lessons"
            uri = URI.parse(url)
            parsed_page = Nokogiri::HTML(uri.open)
            
            contents = parsed_page.css('div.content.text-gray-700 p:nth-child(-n+7)')
            contents.map do |content|
                content.text.strip
            end 
        end
    end 
end 


# puts "Are you interested to know about Rackley School Free Lessons🏊‍♂️? (Please type either Yes or No)"

# puts rackley.swimSafety_lesson
# puts rackley.comeAndTry_lesson
# puts rackley.babySplash_lesson

# puts rackley.school_desc
# puts rackley.op_hours
# rackley.free_lessons
# rackley.print_details


# Notes: 
# gem used to scrape each info that we are after 
# gem used to download the page that we are scraping 
# when the school_page method is invoked, the open method from the open-uri gem works 
