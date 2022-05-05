data = [4, "6", { "result" => "Deset"}]

puts data[0].to_s + " + " + data[1] + " = " + data[2]['result']

class Calculator
    attr_accessor :lista
    
    def sum
       puts lista.sum
    end
    
    def max
       puts lista.max 
    end
    def min
       puts lista.min 
    end
    def odd
        if lista.sum % 2 != 0
            puts true
        else
            puts false
        end
    end
    
    def self.hello
        "Hello, I am your Calculator :) " 
    end
end

kalk = Calculator.new()
kalk.lista = [1,2,3,4,5,6,1]

kalk.sum
kalk.max
kalk.min
kalk.odd

puts Calculator.hello