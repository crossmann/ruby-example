# Sample example with inheritance of a class

class ParentClass
  def sayHello
    puts "Say hello from: #{self}"
  end
end

p_inst = ParentClass.new
p_inst.sayHello

class ChildClass < ParentClass
end

c_inst = ChildClass.new
c_inst.sayHello
