require 'pry'

class Owner

    @@all=[]

    attr_accessor :name, :pets, :species


  def initialize (pets)
    @pets={fishes: [], cats: [], dogs: []}
    @species=species
    @@all << self
  end

  def self.all
    @@all
  end



end# end of class Owner
