require 'rspec'
require 'date'

 class Array

     def find_duplicates
         select.with_index do |e, i|
            i != self.index(e)
          end
     end
  end

describe 'find_duplicates' do
  it 'returns duplicates from an integer based array' do
    ints = [1, 2, 4, 5, 2, 4]
    expect(ints.find_duplicates).to eq([2, 4])
  end

  it 'returns all duplicates of an array of hashes, including when multiple duplicates are found' do
    invoices = [
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Amazon',  amount: 500, date: Date.new(2017, 06, 15).to_s, employee: 'Karen' },
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Daniel Comier', notes: 'Some notes' },
     { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Daniel Comier', notes: 'Some notes' },
    ]

    expect(invoices.find_duplicates).to eq([
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Microsoft', amount: 800, date: Date.new(2017, 06, 22).to_s, employee: 'Zizo' },
     { company: 'Google', amount: 500, date: Date.new(2017, 01, 01).to_s, employee: 'Daniel Comier', notes: 'Some notes' },
      ])
  end
end
