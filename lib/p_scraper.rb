
require 'nokogiri' 
require 'open-uri' 
require_relative './class.rb'
# require 'awesome_print'

class LearnSwimming

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

    def print_details
        free_lessons.each.with_index(1) do |lesson, index|
            puts "#{index}. #{lesson}"
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

    def user_option 
        
    end 
end 

puts "Are you interested to know about Rackley School Free Lessons? (Please type either y or n)"

rackley = LearnSwimming.new
# puts rackley.swimSafety_lesson
# puts rackley.comeAndTry_lesson
# puts rackley.babySplash_lesson

# puts rackley.school_desc
# puts rackley.op_hours
# rackley.free_lessons
rackley.print_details


input = gets 
p Content.all[input.to_i - 1]


# gem used to scrape each info that we are after 
# gem used to download the page that we are scraping 
# when the school_page method is invoked, the open method from the open-uri gem works 

# def school_page
#     doc = Nokogiri::HTML(open("https://www.rackleyswimming.com.au/parkwood"))
# end

# def free_lessons 
#     lessons = school_page

#     lessons.map do |lesson|
#         free_lesson = Lesson.new
#         free_lesson.title = lesson.css('div.w-full px-20 bg-blue-600 text-white text-center').text.strip
#         free_lesson.url = lesson.css('a.border-blue-500 py-2 md:py-5 px-3 text-white inline-block').attr("href").value.strip 
#     end 
# end

# def school_portal 
#     taps = school_page

#     taps.css('div.dropdown div.dropdown-content').map do |tap|
#         tap.text.strip 
#     end 
# end


# Albert session 
# def school_portal 

#     url = "https://www.rackleyswimming.com.au/free-swim-safety-check"
#     uri = URI.parse(url)
#     parsed_page = Nokogiri::HTML(uri.open)

#     taps = school_page
#     links = parsed_page.css('div.w-full.px-20.bg-blue-600.text-white.text-center a') 
#     links.map do |link|
#         link.attributes["href"].value
#     end 

# end

# my version 
# def free_lessons 

#     url = "https://www.rackleyswimming.com.au/free-swim-safety-check"
#     uri = URI.parse(url)
#     parsed_page = Nokogiri::HTML(uri.open)

#     lessons = parsed_page.css('div.w-full.px-20.bg-blue-600.text-white.text-center a') 
#     lessons.map do |lesson|
#         lesson.text.strip 
#         # lesson.attributes["href"].value
#     end
# end