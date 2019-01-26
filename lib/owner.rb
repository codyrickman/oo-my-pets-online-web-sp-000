class Owner
  attr_reader :pets, :name
  @@all = []
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
    @@all << self
  end
  def self.all
    @@all
  end
end
