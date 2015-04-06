class Student
  def initialize(name)
    @name = name
  end

  def learn
     " I get it"
  end

  def greeting
    "Hi my name is #{@name}"
  end

end

class Instructor
  def initialize(name)
    @name = name
  end

  def teach
    "Everything in Ruby is an object"
  end

  def greeting
    "Hi my name is #{@name}"
  end

end

# class person < Student, Instructor

# end

p = Student.new("Chris")
puts p.greeting

q = Instructor.new("Cristina")
puts q.greeting
