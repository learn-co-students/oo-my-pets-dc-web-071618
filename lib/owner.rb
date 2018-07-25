class Owner

  attr_accessor :name, :pets
  attr_reader :species

  @@all = []

  def initialize(species)
    @pets = {fishes:[], dogs:[], cats:[]}
    @species = species
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all = []
  end

  def self.count
    @@all.count
  end

  def say_species
    "I am a #{self.species}."
  end

  def buy_fish(new_fish)
    self.pets[:fishes] << Fish.new(new_fish)
  end

  def buy_cat(new_cat)
    self.pets[:cats] << Cat.new(new_cat)
  end

  def buy_dog(new_dog)
    self.pets[:dogs] << Dog.new(new_dog)
  end

  def walk_dogs
    self.pets[:dogs][0].mood = "happy"
  end

  def play_with_cats
    self.pets[:cats][0].mood = "happy"
  end

  def feed_fish
    self.pets[:fishes][0].mood = "happy"
  end

  def sell_pets
    self.pets[:dogs].map do |pet|
      pet.mood = "nervous"
    end
    self.pets[:cats].map do |pet|
      pet.mood = "nervous"
    end
    self.pets[:fishes].map do |pet|
      pet.mood = "nervous"
    end
    @pets = {fishes:[], dogs:[], cats:[]}
  end

  def list_pets
    # binding.pry
    "I have #{self.pets[:fishes].count} fish, #{self.pets[:dogs].count} dog(s), and #{self.pets[:cats].count} cat(s)."
  end

end
