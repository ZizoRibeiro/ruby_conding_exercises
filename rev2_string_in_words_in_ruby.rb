require 'rspec'

def sentence_reverser str 
  str.split.reverse.join(' ')
end



  describe "Sentence reverser" do
    it 'reverse the words in a sentence' do
      test_sentence = "back to front"
      expect(sentence_reverser(test_sentence)).to eq('front to back')
    end
  end

  # 1.back
  # 2.to
  # 3.front

  # 1.front
  # 2.to
  # 3.back

  # split method - can take everything inside and convert to an Array