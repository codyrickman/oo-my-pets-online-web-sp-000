class Owner
  attr_accessor :pets, :name
  def initiliaze(name)
    @name = name
    @pets = {fishes: [], cats: [], dogs: []}
  end
end