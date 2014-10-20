class Animal
  attr_reader :name
  def initialize(name)
    @name = name
  end

  def make_noise
    "woof"
  end
end