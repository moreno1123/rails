require 'rails_helper'
require './lib/classes/calculator.rb'

RSpec.describe Calculator, type: :class do
    
    context "when empty list of numbers is provided" do
        subject { Calculator.new(list_of_numbers) }
        
        let(:list_of_numbers) { [] }

        it "raises an error" do
            expect{subject}.to raise_error(RuntimeError)
        end
    end
    
    describe "#sum" do
        subject { Calculator.new(list_of_numbers).sum }

        let(:list_of_numbers) { [1,2] }

        it "return sum of numbers" do
            expect(subject).to eq(3)
        end
    end

    describe "#max" do
        subject { Calculator.new(list_of_numbers).max }

        let(:list_of_numbers) { [1,2,6,8] }

        it "return the highest number from the list" do
            expect(subject).to eq(8)
        end
    end

    describe "#min" do
        subject { Calculator.new(list_of_numbers).min }

        let(:list_of_numbers) { [1,2,6,8] }

        it "return the lowest number from the list" do
            expect(subject).to eq(1)
        end
    end

    describe "#odd" do
        subject { Calculator.new(list_of_numbers).odd}

        let(:list_of_numbers) { [1,2] }

        it "return true if the sum of numbers is odd" do
            expect(subject).to eq(true)
        end
    end

    describe "#self.hello" do
        subject { Calculator.hello() }

        it "return true if the string is correct" do
            expect(subject).to eq("Hello, I am your Calculator :) ")
        end

        it "return true if the string is not correct" do
            expect(subject) != eq("Hello")
        end
    end
end
