require 'person'

describe Person do

  let(:ed) { Person.new "Ed" }
  let(:billy) { Person.new "Billy" }

  context 'I want my attack to reduce Player 2s HP' do
    

    it 'returns instance name' do
      expect(ed.name).to eq 'Ed'
    end

  end

end