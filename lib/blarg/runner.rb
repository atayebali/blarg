#require 'optparse'
require_relative 'linked_list'
require_relative 'insert_sort'

module Blarg
  class Runner
   
=begin
TO run ruby -I lib/ bin/blarg 
=end  
   def initialize
     puts "Welcome to Blarg"
     puts "Type in LL for linked List"
     puts "Type in IS for InsertSort"
     @choice = $stdin.gets.chomp
   end
   
   def run 
     LinkedList.new if @choice == "LL"
     InsertSort.new if @choice == 'IS'
   end
    
  end
end