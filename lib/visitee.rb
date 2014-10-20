class Visitee
  def initialize(object)
    @object = object
  end

  def accept(visitor)
    visitor.visit(@object)
  end
end
