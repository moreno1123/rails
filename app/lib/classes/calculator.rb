class Calculator

    def initialize(list_of_numbers)
        @list_of_numbers = list_of_numbers
        
        raise "The list of numbers can't be empty" unless @list_of_numbers.any? 
    end

    def sum
        @list_of_numbers.sum
    end
    
    def max
       @list_of_numbers.max 
    end
    
    def min
       @list_of_numbers.min 
    end
    
    def odd
        @list_of_numbers.sum % 2 != 0 ? true : false
    end
    
    def self.hello
        "Hello, I am your Calculator :) " 
    end
end