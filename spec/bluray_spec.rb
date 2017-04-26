require_relative 'spec_helper'
require_relative '../lib/bluray'

describe Bluray do
  before(:context) do
    # initialize item
    @bluray = Bluray.new('The Rock', 49.99, 138, 'Jerry Bruckheimer', 'Michael Bay')
  end

  # check initialization
  describe 'Initialization' do
    it 'should be an instance of Blueray Class'
    expect(@bluray).to be_instance_of(Bluray)
  end

  it 'should be a kind of Item' do
    expect(@bluray).to be_kind_of(Item)
  end

  it 'is assigned a name' do
    expect(@bluray.name).to eq('The Rock')
  end

  it 'is assigned a price' do
    expect(@bluray.price).to eq(49.99)
  end

  it 'is assigned a run time' do
    expect(@bluray.run_time).to eq(138)
  end

  it 'is assigned a director' do
    expect(@bluray.director).to eq('Michael Bay')
  end

  it 'is assigned an producer' do
    expect(@bluray.producer).to eq('Jerry Bruckheimer')
  end
end

# check getters and setters
describe 'Accessors' do
  it 'should be able to get and set name' do
    @bluray.name = 'The Dark Knight'
    expect(@bluray.name).to eq('The Dark Knight')
  end

  it 'should be able to get and set price' do
    @bluray.price = 25.99
    expect(@bluray.price).to eq(25.99)
  end

  it 'should be able to get and set total runtime in seconds' do
    @bluray.run_time = 152
    expect(@bluray.run_time).to eq(152)
  end

  it 'should be able to get and set director' do
    @bluray.director = 'Christopher Nolan'
    expect(@bluray.director).to eq('Christopher Nolan')
  end

  it 'should be able to get and set producer' do
    @bluray.producer = 'Christopher Nolan, Emma Thomas'
    expect(@bluray.producer).to eq('Christopher Nolan, Emma Thomas')
  end
end
