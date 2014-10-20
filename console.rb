$: << 'lib'

require 'things/person'
require 'things/animal'
require 'visitors/prodder'
require 'visitors/announcer'
require 'visitee'


module Console
  module_function

  def go
    visitors.each do |visitor|
      things.each do |thing|
        thing.accept(visitor)
      end
    end
    return
  end

  private
  def visitors
    [Announcer.new, Prodder.new]
  end

  def things
    bob = Person.new("Bob")
    rex = Animal.new("Rex")
    [bob, rex].map &method(:wrap)
  end

  def wrap(thing)
    Visitee.new(thing)
  end
end

include Console


