class ParentClass
end

class ChildClass < ParentClass
end

print "Child superclass: ", ChildClass.superclass
print "\nParent superclass: ", ParentClass.superclass
print "\nObject superclass: ", Object.superclass

