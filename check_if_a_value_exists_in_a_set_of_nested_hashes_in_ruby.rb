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
  it 'checks if see if a value is included in any number of hashes nested inside an array' do 
    books = [
      {
        :title => 'The last Kingdom',
        :author => 'Bernard Cornwell'
      },
      {
        :title => "Deep Work",
        :author => 'Cal Newport'
      }
    ]

    expect(books.value_included? 'Deep Work').to eq(true)
    expect(books.value_included? 'Something Else').to eq(false)
  end
end