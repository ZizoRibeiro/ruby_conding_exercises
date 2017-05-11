require 'rspec'

def greater_than_10 arr 
  arr.count do |e|
    e > 10
  end
end


describe 'Array Counter' do
  it 'Counts how many elements are greater than 10' do
    arr = [100, 2, 5, 10, 11]
    expect(greater_than_10 arr).to eq(2)
  end
end


# arr = [100, 2, 5, 10, 11]

# arr.count do |e|
#   e > 10

# end