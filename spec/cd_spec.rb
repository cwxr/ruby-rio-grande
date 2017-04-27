require_relative 'spec_helper'
require_relative '../lib/cd'


describe 'Cd' do
  before(:context) do
    # initialize item
    @cd1 = Cd.new('Kenny G Best Hits', 25.00, 10, 'Kenny G', 60)
  end

  # check initialization
  describe 'Initialization' do

    # check that it is an instance of Cd
    it 'should be a cd' do
      expect(@cd1).to be_instance_of(Cd)
    end

    # check that it is an extended from Item
    it 'should be an extension of Item' do
      expect(@cd1).to be_kind_of(Item)
    end
  end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @cd1.name = 'Kenny G Best Hits'
      expect(@cd1.name).to eq('Kenny G Best Hits')
    end

    it 'assigns and reads the price' do
      @cd1.price = 25.00
      expect(@cd1.price).to eq(25.00)
    end

    it 'assigns and reads the number of tracks' do
      @cd1.tracks = 10
      expect(@cd1.tracks).to eq(10)
    end

    it 'assigns and reads the artist' do
      @cd1.artist = 'Kenny G'
      expect(@cd1.artist).to eq('Kenny G')
    end

    it 'assigns and reads the run_time' do
      @cd1.run_time = 60
      expect(@cd1.run_time).to eq(60)
    end

  end
end
