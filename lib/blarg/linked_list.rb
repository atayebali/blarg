module Blarg
  class LinkedList
    def initialize
     puts "Welcome to Linked List"
     puts "Please enter Y to continue...."
     a = $stdin.gets.chomp
     if a == 'Y'
       run
     else
       p "in Run yippie!"
      end      
    end
    
    def run
      p "Running mad hard"
    end
    
  end
end