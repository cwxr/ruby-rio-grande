require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @blu1 = Bluray.new("Men In Black", 29.00, 110, 'Barry Sonnenfeld', 'Will Smith')
  end

  # check initialization
  describe 'Initialization' do
  # check that it is an extended from Item
    it 'should be a kind of Item' do
      expect(@blu1).to be_kind_of(Item)
    end
  # check that it is an instance of Bluray
  it 'should be an instance of Bluray' do
      expect(@blu1).to be_instance_of(Bluray)
    end
  end
  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @blu1.name = 'Men In Black'
      expect(@blu1.name).to eq('Men In Black')
    end

    it 'assigns and reads the price' do
      @blu1.price = 29.00
      expect(@blu1.price).to eq(29.00)
    end

    it 'assigns and reads the run time' do
      @blu1.run_time = 110
      expect(@blu1.run_time).to eq(110)
    end

    it 'assigns and reads the director' do
      @blu1.director = 'Barry Sonnenfeld'
      expect(@blu1.director).to eq('Barry Sonnenfeld')
    end

    it 'assigns and reads the producer' do
      @blu1.producer = 'Will Smith'
      expect(@blu1.producer).to eq('Will Smith')
    end
  end
end
