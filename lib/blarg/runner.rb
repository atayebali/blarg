Dir["*.rb"].each {|file| require File.expand_path(file)}
module Blarg
  class Runner
   
=begin
TO run ruby -I lib/ bin/blarg 
=end  
   def initialize
     puts "Welcome to Blarg"
     puts "Type in LL for linked List"
     puts "Type in IS for InsertSort"
     #@choice = $stdin.gets.chomp
     @choice = "IS"
   end
   
   def run 
     #LinkedList.new if @choice == "LL"
     InsertSort.new if @choice == 'IS'
   end
    
  end
end