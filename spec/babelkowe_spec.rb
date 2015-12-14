require 'simplecov'
require 'rspec'
require_relative '../lib/babelkowe.rb'
SimpleCov.start


describe '#babelkowe' do

  it 'should not raise error'  do
    expect { bubble_sort([1,6]) }.not_to raise_error
  end
  it 'These should be equal' do
    expect(bubble_sort([11,165,1,0])).to eq([0,1,11,165])
  end
  it 'These should not be equal' do
    expect(bubble_sort([3,6,1])).not_to eq([3,1,6])
  end

end
