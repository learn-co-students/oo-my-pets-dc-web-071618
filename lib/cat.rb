require_relative 'owner.rb'

class Cat

  attr_accessor :mood
  attr_reader :name

  def initialize(name)
    @name = name
    @mood = "nervous"
  end

end
