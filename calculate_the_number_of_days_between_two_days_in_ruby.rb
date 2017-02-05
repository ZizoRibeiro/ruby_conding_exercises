require 'rspec'
require 'date'

def day_counter
  Integer(Date.new(2017,02,04) - Date.new(2014,05,01))
end

# Integer(day_counter)

# day_counter.to_i

day_counter


describe 'Day counter' do 
  it 'counts the days between May 1st 2014 and February 04th 2017' do 
    expect(day_counter).to eq(1010)
  end
end