require 'rspec'

class Array
  def does_it_have? num
    each do |i|
      return true if i == num  #return will stop the block.
    end

    false  #if it's not true. very few things in ruby is false, for ex: nil or false
  end
end




describe 'Include? clone' do
  it 'returns true if a supplied element is included in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 5).to eq(true)
    expect(arr.does_it_have? 20).to eq(false)
  end
end