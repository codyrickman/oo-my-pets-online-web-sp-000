class Owner
  attr_reader :pets, :name
  @@all = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @species = "human"
    @@all << self
  end
  def say_species
    return "I am a #{@species}"
  end
  def name
    @name
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
