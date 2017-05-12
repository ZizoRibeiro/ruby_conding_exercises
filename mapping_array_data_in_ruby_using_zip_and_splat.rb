require 'rspec'




events = [
  'UFC 1',
  'UFC 2',
  'UFC 3',
  'UFC 4',
  'UFC 5',
  'UFC 6',
  'UFC 7',
  'UFC 8',
  'UFC 9'
]

fighters = [

  'Anderson',
  'Velasquez',
  'Weidman',
  'Jacare',
  'Musasi',
  'Bisping',
  'Connor',
  'Johnson',
  'Jones'
]

cities = [
  'Vegas',
  'New York',
  'Texas',
  'Toronto',
  'Vancouver',
  'Rio',
  'Chicago',
  'Miami',
  'Boston'
]


# events.zip(fighters, cities) -- zip method in ruby combines all array 


def position_filter(events, *data)
  events.zip(*data)
end

describe 'Position Filter' do 
  it 'Fighters into events' do 
    test_events = ['UFC1', 'UFC2', 'UFC3']
    test_name = ['First Ufc', 'Second Ufc', 'Third Ufc']
    expect(position_filter(test_events, test_name).first).to eq(['UFC1', 'First Ufc'])
  end
end



