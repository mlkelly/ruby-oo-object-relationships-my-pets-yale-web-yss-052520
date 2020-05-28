# Owner
#   Instance methods
#     #name
#       can have a name 
#       cannot change owner's name 
#     #species
#       initializes with species set to human 
#       can't change its species 
#     #say_species
#       can say its species
#   Class methods
#     .all returns all instances of Owner that have been created 
#     .count returns the number of owners that have been created 
#     .reset_all can reset the owners that have been created 
require "pry"
require_relative "cat.rb"
require_relative "dog.rb"

class Owner
  # code goes here
    attr_reader :name, :species

    @@all_owners = []

    def initialize(name)
      @name = name
      @species = "human"
      @@all_owners << self
    end

    def say_species
      "I am a #{self.species}."
    end

    def self.all 
      @@all_owners
    end

    def self.count
      self.all.count
    end

    def self.reset_all
     self.all.clear
    end

    def cats
      Cat.all.select {|name| name.owner == self}
    end

    def dogs
      Dog.all.select {|name| name.owner == self}
    end

# Associations
#   Owner instance methods
#     #cats
#       returnsa a collection of all the cats that belong to the owner 
#     #dogs
#       returnsa a collection of all the dogs that belong to the owner 
#     #buy_cat
#       can buy a cat that is an instance of the Cat class 
#       knows about its cats 
#     #buy_dog
#       can buy a dog that is an instance of the Dog class 
#       knows about its dogs 
#     #walk_dogs
#       walks the dogs which makes the dogs' moods happy 
#     #feed_cats
#       feeds cats which makes the cats' moods happy 
#     #sell_pets
#       can sell all its pets, which makes them nervous 
#       can sell all its pets, which leaves them without an owner 
#     #list_pets
#       can list off its pets 

    def buy_cat (name)
      Cat.new(name,self)
    end

    def buy_dog (name)
     Dog.new(name,self)
    end

    def walk_dogs
      self.dogs.each {|dog| dog.mood = "happy"}
    end

    def feed_cats
      self.cats.each {|cat| cat.mood = "happy"}
    end

    def sell_pets
      # self.cats.each do |cat| 
      #   cat.mood = "nervous"
      #   cat.owner = nil 
      # end
      # self.dogs.each do |dog|
      #   dog.mood = "nervous"
      #   dog.mood = nil
      # end
      all_pets = self.cats + self.dogs
      
      all_pets.each {|animal|
        animal.mood = "nervous"
        animal.owner = nil
    }
    end

    def list_pets
      "I have #{self.dogs.size} dog(s), and #{self.cats.size} cat(s)."
    end

end

# binding.pry
# 0
