#require 'pry'

class Cat

  attr_accessor :mood, :owner
  attr_writer #setters
  attr_reader :name #getters
  @@all = []
  
# @owner = Owner.new("Hermione")
# @cat = Cat.new("Crookshanks", @owner)

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all << self
    owner.cats << self
  end

  def self.all
    @@all
  end

end