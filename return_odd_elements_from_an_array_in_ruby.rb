require 'rspec'

class Array
  def odd_selector
    odds = []
    self.each do |e|
      odds << e if e.odd?
    end
    odds 
  end
end


describe 'Odd selector' do 
  it 'given an array, it returns a collection of the odd elements' do 
    expect(Array(1..10).odd_selector).to eq([1, 3, 5, 7, 9])
  end
end

# arr = Array(1..10)
# arr.odd_selector

