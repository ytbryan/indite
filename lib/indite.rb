require "indite/version"
require 'fileutils'
require 'date'
require 'thor'

module Indite
  class Base < Thor
    map 'g' => :generate



    desc :time, ''
    def time str
      #time 2.weeks
    end


    desc :generate, 'generate a markdown file with datestamp'
    def generate name, date=nil
      name = name.gsub(" ", "-").downcase
      if date != nil
        #set the date
        FileUtils.touch("#{Date.today.strftime('%Y-%m-%d')}-#{name}.md")
      else
        FileUtils.touch("#{Date.today.strftime('%Y-%m-%d')}-#{name}.md")
      end
    end

    desc :destroy, ''
    def destroy
      #list all the markdown on a directory and delete according to the name.
      #if you cannot find it then, leave it

      title = title.to_s and  category = category.to_s and list = "" and array = Dir.glob("#{category}/*")
      array.each_with_index do |filename, index|
        list += "#{index+1}: " + filename + "\n"
      end

      unless array.count == 0
        input =  ask "\n#{list} \nWhich of the following do you wish to REMOVE from #{category} "
        input = input.to_i
        puts FileUtils.rm("#{array[input-1]}") unless input < 1
        puts "Removed."
      else
        puts "empty #{category}"
      end

    end

    desc :edit, ''
    def edit

    end


    private

    def new
      #create new file
    end

    def create
      #create new content on a file

    end

    def delete
      #del content on a file

    end

    def show
      #show content on a file
    end

    def update
      #update content on a file
    end


  end
end
