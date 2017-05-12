require 'rspec'


class Array
  def value_included? element
    each do |i|
      return true if i.has_value? element
    end

    false
  end
end

describe 'Collection search' do
  it 'checks to see if a value is included in any number of hashes nested inside an array' do
    movies = [
      {
        :name => 'Rocky I',
        :director => 'John G Avildsen'
      },

      {
        :name => 'The Cicle',
        :director => 'James Ponsoldt'
      }

    ]


    expect(movies.value_included? 'Rocky I').to eq(true)
    expect(movies.value_included? 'wrong name').to eq(false)
  end
end