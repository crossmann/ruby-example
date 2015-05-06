# implement iterators in Ruby
class Arrays
  def find
    each do |value|
      return value if yield(value)
    end
    nil
  end
end

puts [1, 3, 5, 7, 9].find { |v| v*v > 30 }

puts ["H", "A", "L"].collect { |x| x.succ }
puts [1, 3, 5, 7, 9, 11, 13, 15, 17, 19].inject { |sum, element| sum+element }
puts [1, 3, 5, 7].inject(1) { |prod, element| prod*element }

