require 'pry'

class Cat
  # code goes here
  attr_accessor :mood
  attr_reader :name



  def initialize(name)
    @name = name
    @mood = 'nervous'#default mood is nervous, so no need to have it as an argument
  end

  
# binding.pry
end
