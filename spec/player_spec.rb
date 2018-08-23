require 'player'


describe Player do
subject(:player) { Player.new('test') }

  describe '#initialize' do 
    it 'should know its name' do
      p1 = Player.new('John')
      expect(p1.name).to eq('John')
      end
    it 'should know its name' do 
      expect(subject.name).to eq('test')  
    end
  end

end
