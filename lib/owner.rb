class Owner
  attr_reader :pets, :name
  @@all = []
  def initialize(species)
    @pets = {fishes: [], cats: [], dogs: []}
    @species = species
    @@all << self
  end
  def species
    @species
  end
  def say_species
    return "I am a #{@species}."
  end
  def name=(name)
    @name = name
  end
  def buy_fish(name)
    new_fish = Fish.new(name)
    @pets[:fishes] << new_fish
  end
  def buy_cat(name)
    new_cat = Cat.new(name)
    @pets[:cats] << new_cat
  end
  def buy_dog(name)
    new_dog = Dog.new(name)
    @pets[:dogs] << new_dog
  end
  def walk_dogs
    @pets[:dogs].each do |dog|
      dog.mood = "happy"
    end
  end
  def play_with_cats
  end
  def feed_fish
  end
  def sell_pets

  end
  def list_pets
    @pets.each do |type|
      type.each do |pet|
        puts "#{pet}"
      end
    end
  end
  def self.all
    @@all
  end
  def self.count
    @@all.count
  end
  def self.reset_all
    @@all = []
  end
end
