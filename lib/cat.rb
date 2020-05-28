# Instance methods
# initializes with a name and an Owner 
# can change its owner 
# can't change its name 
# initializes with a nervous mood
# can change its mood 
# Class methods
# knows all the cats 
require "pry"

class Cat
  # code goes here

  attr_accessor :owner, :mood
  attr_reader :name

  @@all_cats = []

  def initialize(name, owner)
    @name = name
    @owner = owner
    @mood = "nervous"
    @@all_cats << self
  end

  def self.all
    @@all_cats
  end
end

# binding.pry
# 0