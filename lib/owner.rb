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
    @pets.fish << new_fish
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
