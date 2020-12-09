require 'pry'

class Owner

  attr_accessor :cats, :dogs
  attr_writer #setters
  attr_reader :name, :species #getters
  @@all = []

  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
    @cats = []
    @dogs = []
  end

  def say_species
    "I am a #{self.species}."
  end

  def self.all
    @@all
  end
  
  def self.count
    @@all.size
  end

  def self.reset_all
    @@all.clear
  end

  def feed_cats
    @cats.each do |cat|
      cat.mood = "happy"
    end
  end

  def buy_dog(name)
    Dog.new(name, self)
  end

  def buy_cat(name)
    Cat.new(name, self)
  end

  def walk_dogs
    @dogs.each do |dogs|
      dogs.mood = "happy"
    end
  end

  def sell_dogs
    @dogs.each do |dog|
      dog.mood = "nervous" 
      dog.owner = nil
    end
    @dogs = []
  end

  def sell_cats
    @cats.each do |cat|
      cat.mood = "nervous"
      cat.owner = nil 
    end
    @cats = []   
  end

  def sell_pets
    self.sell_dogs 
    self.sell_cats
  end

  def list_pets
    "I have #{@dogs.size} dog(s), and #{@cats.size} cat(s)."
  end
#binding.pry
end
