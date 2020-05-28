# Instance methods
#     initializes with a name and an Owner 
#     can change its owner 
#     can't change its name 
#     initializes with a nervous mood 
#     can change its mood 
#   Class methods
#     knows all the dogs
require "pry"

class Dog
  # code goes here

  attr_reader :name
  attr_accessor :mood, :owner

  @@all_dogs = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous" 
    @@all_dogs << self
  end

  def self.all
    @@all_dogs
  end
end

# binding.pry
# 0