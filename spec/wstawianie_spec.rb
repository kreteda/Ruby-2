require 'simplecov'
SimpleCov.start

require_relative '../lib/wstawianie'

RSpec.describe 'wstawianie.rb' do
  describe '#wstawianie' do
    let(:arr) { [3, 5, 8, 2, 0, 4, 7, 6, 9, 1] }
    let(:random_arr) { Array.new(10) { rand(100) } }
    let(:sorted_random_arr) { random_arr.sort }

    it "should sort an unsorted array" do
      expect(insertion_sort!(arr)).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
      expect(insertion_sort!(random_arr)).to eq(sorted_random_arr)
      expect(insertion_sort!([7, 5, 5, 3, 5, 0, 5, 1, 3, 6])).to eq([0, 1, 3, 4, 5, 5, 5, 5, 6, 7])
      expect(insertion_sort!([9, 8, 7, 6, 5, 4, 3, 2, 1, 0])).to eq([0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
    end

    it "should return an empty array when given zero elements" do
      expect(insertion_sort!([])).to eq([])
    end

    it "should handle single element arrays" do
      expect(insertion_sort!([9])).to eq([9])
    end

    it "should handle small, simple arrays" do
      expect(insertion_sort!([4, 2, 1])).to eq([1, 2, 4])
      expect(insertion_sort!([2, 1])).to eq([1, 2])
    end

    it "should not alter an already sorted array" do
      expect(insertion_sort!(sorted_random_arr)).to eq(sorted_random_arr)
    end
  end
end
