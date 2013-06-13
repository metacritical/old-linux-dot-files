call_me_with_context = proc { name }
lambda_obj = lambda { name }

class NewPerson
  def name
    puts "pankaj wtf"
  end
end

class Person
  def name
    puts :panku
  end
end

man = NewPerson.new
superman = Person.new
man.instance_eval(&call_me_with_context)
man.instance_exec(superman, &:name)
