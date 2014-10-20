require 'visitors/visitor'

class Announcer < Visitor

  private
  def action
    "announce"
  end

  def announce_animal(animal)
    puts "This is #{animal.name}"
  end

  def announce_person(person)
    puts "Greetings, this person is named #{person.name}"
  end
end