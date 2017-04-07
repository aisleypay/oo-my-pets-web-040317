# An owner will know about all its pets, be able to buy a pet, set the name of a pet (which the pet can't change, because that would be weird), change a pet's mood through walking, feeding, or playing with it, and sell all of its pets (for when it moves to that tiny NYC studio after college).
require "pry"
class Owner
  attr_accessor :pets, :name
  attr_reader :species
  @@all = []

  def initialize(species)
    @species = species
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end

  def self.all
    @@all
  end

  def self.reset_all
    @@all.clear
  end

  def self.count
    @@all.count
  end

  def species
    @species
  end

  def say_species
    "I am a #{@species}."
  end

  def buy_fish(name)
    @pets[:fishes] << Fish.new(name)
  end

  def buy_cat(name)
    @pets[:cats] << Cat.new(name)
  end

  def buy_dog(name)
    @pets[:dogs] << Dog.new(name)
  end

  def walk_dogs
    @pets[:dogs].map { |dog| dog.mood = "happy" }
  end

  def play_with_cats
    @pets[:cats].map { |cat| cat.mood = "happy" }
  end

  def feed_fish
    @pets[:fishes].map { |fish| fish.mood = "happy" }
  end

  def sell_pets
    self.pets.each { |pet_type, pets| pets.map {|pet| pet.mood = "nervous" } pets.clear}

  end

  def list_pets
    "I have #{@pets[:fishes].length} fish, #{@pets[:dogs].length} dog(s), and #{@pets[:cats].length} cat(s)."
  end

#Make a new instance of the appropriate pet, initializing it with that name.

# Associate that new pet instance to the owner by adding it to the appropriate array-value of the @pets hash stored in the pets attr_accessor.
end
