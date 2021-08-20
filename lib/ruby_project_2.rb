# frozen_string_literal: true

require 'nokogiri' 
require 'open-uri' 
require_relative "ruby_project_2/version"
require_relative "ruby_project_2/swim_school"
require_relative "ruby_project_2/learn_swimming_scraper"
require_relative "ruby_project_2/cli"

module RubyProject2
  class Error < StandardError; end
  # Your code goes here...
end

# this file is like the main module that gives context to your gem 
