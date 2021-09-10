require 'person'

describe Person do

  let(:ed) { Person.new "Ed" }

  context '#name' do
    

    it 'returns instance name' do
      expect(ed.name).to eq 'Ed'
    end

  end

end