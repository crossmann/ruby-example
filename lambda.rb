# Lambda expression and block code

#def create_block_object(&block)
#  block
#end
#bo = create_block_object { |param| puts "You called me with #{param}" }
#bo.call 99

## BECOME
bo = lambda { |param| puts "You called me with #{param}" }
bo.call 99

# 2nd ex.
# CLOSURE block
# closure—variables in the surrounding scope that are
# referenced in a block remain accessible for the life of that block and the life of any Proc object
# created from that block.

def power_proc_generator
  value = 1
  lambda { value += value }
end

power_p = power_proc_generator
puts power_p.call
puts power_p.call
puts power_p.call

# 3rd ex.
#proc = lambda{|arg1| puts "Put in proc1, arg1 : #{arg1}"}
#proc.call("animals")

#   become
proc1 = -> arg1 { puts "Put in proc1 the argument: #{arg1}" }
proc2 = -> arg1, arg2 { puts "Put in proc2 the arguments: #{arg2} and #{arg1}" }
proc1.call("ant")
proc2.call("bee", "cat")

# 4th.ex
def my_if(condition, then_clause, else_clause)
  if condition
    then_clause.call
  else
    else_clause.call
  end
end

5.times do |val|
  my_if val<2, -> { puts "arg1: #{val} is less then 2" }, -> { puts "arg2: #{val} is bigger than 2" }
end
