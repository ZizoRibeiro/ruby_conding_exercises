require 'rspec'

hash = { name: 'zizo', email: 'zizo@example.com' }

def hash_query hash, key
  hash.fetch(key)
end

describe 'Hash query' do 
  before do 
    @hash = { name: 'zizo', emails: 'zizo@example.com' }
  end

  it 'properly retrieves a value given a key' do 
    expect(hash_query @hash, :name).to eq('zizo')
  end

  it 'throws an error when a key is requested that does not exist in the hash' do 
    expect { hash_query @hash, :username }.to raise_error(KeyError)
  end

end