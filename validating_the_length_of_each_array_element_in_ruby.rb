require 'rspec'

class Array
  # this method will check if in the array has a word with 4 or more characters 
  def at_least_four_characters?
    all? do |e|
      e.length >= 4
    end 
  end
end

describe 'Four characters' do
  it 'checks if an array contains elements that are all at least 4 characters long' do 
    arr_one = %w{words that have size requirements}
    arr_two = %w{words that are not all 4 characters long}
    expect(arr_one.at_least_four_characters?).to eq(true)
    expect(arr_two.at_least_four_characters?).to eq(false)
  end
end

arr_one = %w{words that have size requirements}
arr_two = %w{words that are not all 4 characters long}

arr_one.at_least_four_characters?
arr_two.at_least_four_characters?