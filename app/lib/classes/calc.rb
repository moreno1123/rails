require './lib/classes/calculator.rb'

data = [4, "6", { "result" => "Deset"}]

puts data[0].to_s + " + " + data[1] + " = " + data[2]['result']



kalk = Calculator.new([1,2,3,4,5,6,1])

puts kalk.sum
puts kalk.max
puts kalk.min
puts kalk.odd

puts Calculator.hello