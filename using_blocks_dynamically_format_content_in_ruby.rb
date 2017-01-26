require 'rspec'


def card_generator(list, &block)
  list.map.with_index(1) do |fighter, index|
    yield(index, fighter)
  end
end

describe 'Lineup Generator' do 
  before do 
    @fighters = ['Jones', 'Comier', 'Velasquez']
  end

  it 'can build a fight card list' do 
    card = card_generator(@fighters) { |i, f| "#{i}. #{f}" }
    expect(card).to eq(["1. Jones", "2. Comier", "3. Velasquez"])
  end


  it 'can build an HTML fight card list' do
    card = card_generator(@fighters) { |i, f| "<p>#{i}</p> <div>#{f}</div>" }
    expect(card).to eq(["<p>1</p> <div>Jones</div>", "<p>2</p> <div>Comier</div>", "<p>3</p> <div>Velasquez</div>"])
  end

  it 'can build an HTML ul fight card list' do 
    card = card_generator(@fighters) { |i, f| "<li>#{f}</li>" }
    expect(card).to eq(["<li>Jones</li>", "<li>Comier</li>", "<li>Velasquez</li>"])
  end
end

