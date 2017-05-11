require 'rspec'


class Array

  def lagest_word
    flat_map(&:split).max_by(&:length)
  end
end


describe 'Word max' do
  it 'returns the lagest word from an array' do
    arr = ['A sentence', 'broken into several', 'array elements']
    expect(arr.lagest_word).to eq('sentence')
  end
end