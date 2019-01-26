class Owner
  attr_reader :pets, :name
  def initialize(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end
