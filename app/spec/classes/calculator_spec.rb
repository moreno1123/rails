require 'rails_helper'
require './lib/classes/calculator.rb'

RSpec.describe Calculator, type: :class do
    
    let(:list_of_numbers) {Calculator.new([1,2])}
    let(:list_of_numbers1) {Calculator.new([])}
    
    context "given string" do
        
        it "wrong input" do
            expect(Calculator.hello()).not_to eq("book")
        end
        
        it "correct input" do
            expect(Calculator.hello()).to eq("Hello, I am your Calculator :) ")
        end
        
    end
    
    context "given array" do
        
        it "list of numbers" do
           expect (list_of_numbers) != eq(nil)
        end
        
        it "empty list of numbers" do
           expect {list_of_numbers1}.to raise_error(RuntimeError)
        end
        
    end
end
