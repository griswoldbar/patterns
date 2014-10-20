class Visitor
  def visit(thing)
    send("#{action}_#{thing.class.to_s.downcase}", thing)
  end

  private
  def action
    raise 'abstract method called'
  end
end