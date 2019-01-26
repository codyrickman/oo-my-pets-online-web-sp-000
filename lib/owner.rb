class Owner
  attr_reader :pets, :name
  @@all = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def species
    @species = "human"
  end
  def say_species
    puts "#{@species}"
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
