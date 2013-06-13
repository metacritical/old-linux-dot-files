class Person
  def method_missing(m, *args)
    nil
  end

  def to_s
    nil
  end

  def inspect
    nil
  end
end

person = Person.new
p( person && puts('hell') )
