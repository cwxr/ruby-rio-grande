require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item

    @bluray = Bluray.new("Men In Black", 29.00, 110, 'Barry Sonnenfeld', 'Will Smith')


  # check initialization
  describe 'Initialization' do

  # check that it is an extended from Item
    it 'should be a kind of Item' do
      expect(@bluray).to be_kind_of(Item)
    end

  # check getters and setters
  describe 'getters and setters' do
    it 'assigns and reads the name' do
      @bluray.name = 'Men In Black'
      expect(@bluray.name).to eq('Men In Black')
    end

    it 'assigns and reads the price' do
      @bluray.price = 29.00
      expect(@bluray.price).to eq(29.00)
    end

    it 'assigns and reads the run time' do
      @bluray.run_time = 110
      expect(@bluray.run_time).to eq(110)
    end

    it 'assigns and reads the director' do
      @bluray.director = 'Barry Sonnenfeld'
      expect(@bluray.director).to eq('Barry Sonnenfeld')
    end

    it 'assigns and reads the producer' do
      @bluray.producer = 'Will Smith'
      expect(@bluray.producer).to eq('Will Smith')
    end

  end
end
