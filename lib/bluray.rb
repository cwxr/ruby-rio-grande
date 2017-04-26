require_relative 'item.rb'

class Bluray < Item
  attr_accessor :name, :run_time, :producer, :price
  attr_reader :director

  def initialize(name, price, run_time, producer, director)
    super(name, price)
    @producer = producer
    @director = director
    @run_time = run_time
  end
end
