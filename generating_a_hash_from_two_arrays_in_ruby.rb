require 'rspec'

def title_builder headers, data
  hash = Hash.new

  headers.each_with_index do |header, index|
    hash[header] = data[index]
  end

  hash

end


describe 'Hash builder' do 
  it 'combines two arrays to generate a hash' do 
    arr_1 = ['title', 'description', 'name']
    arr_2 = ['category', 'ratings', 3]
    expect(title_builder arr_1, arr_2).to eq("title"=>"category",
                                            "description"=>"ratings",
                                            "name"=>3)
  end 
end