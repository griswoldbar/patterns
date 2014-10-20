require 'visitors/visitor'

class Prodder < Visitor
  private

  def action
    "prod"
  end

  def prod_animal(animal)
    puts "#{animal.name} goes #{animal.make_noise}"
  end

  def prod_person(person)
    puts "#{person.name} says #{person.prod_reaction}"
  end
end