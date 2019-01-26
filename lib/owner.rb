class Owner
  attr_accessor :pets, :name
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
