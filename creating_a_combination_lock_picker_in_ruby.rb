require 'rspec'

  def lockpick arr, combinations: nil
    return arr.permutation(3).to_a if combinations
      arr.permutation(3).size
  end

# lockpick takes two arguments, an array and combinations with default value = nil
# if combinations: true find all possible combinations

# I can use the permutation method in ruby that goes inside of the array and give all the possible
# options. for ex.: arr.permutation(3).to_a will return a enumarable arrays to us with all the possible options of arrays of three numbers inside.




describe 'Lockpick' do

  it 'tells you how many guesses it could take to guess the combination when given three numbers' do
    values = [14, 9, 29]
    expect(lockpick values).to eq(6)
  end

  it 'tells you how many guesses it could take to guess the combination when given any count of numbers' do
    values = [14, 9, 29, 44, 2, 33]
    expect(lockpick values).to eq(120)
  end

  it 'tells you the potential combinations if combinations is marked true' do
    values = [14, 9, 29]
    expect(lockpick values, combinations: true).to eq([[14, 9, 29], [14, 29, 9], [9, 14, 29], [9, 29, 14], [29, 14, 9], [29, 9, 14]])
  end

end
