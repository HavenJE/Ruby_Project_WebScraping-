
module RubyProject2 
    
  class SwimSchool
    attr_accessor :description, :operating_hours, :lesson, :title, :url, :tap  

      @@all = []

      def initialize
          @@all << self
      end
        
      def self.all # this method will give us all the instances we have created 
          @@all
      end
        
      def self.reset_all # this will reset our array (acts as a refresh array)
          @@all.clear
      end 

    def self.print_details
      self.all.each.with_index(1) do |lesson, index|
          puts "#{index}. #{lesson}"
      end 
    end 
  end
end 




