#require 'optparse'
require_relative 'linked_list'

module Blarg
  class Runner
   
=begin
TO run ruby -I lib/ bin/blarg 
=end  
   def initialize(argv)
     @options = argv.first
     p @options
   end
   
   def run 
     l = LinkedList.new if @options == "LL"
   end
    
  end
end