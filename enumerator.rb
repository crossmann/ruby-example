# implement enumerators

list = [1, 3, 5, 7]
enum = list.to_enum()
p enum.next
p enum.next

short_enum = (1..3).to_enum
long_enum = ('a'..'z').to_enum
loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end

result = []
"cat".each_char.with_index { |item, index| result << [item, index] }
p result.sort_by { |word| word }
enum = "cat".enum_for(:each_char)
p enum.to_a

enum_trees = (1..10).enum_for(:each_slice, 3)
print enum_trees

triangular_numbers = Enumerator.new do |yielder|
  number = 0
  count = 1
  loop do
    number += count
    count += 1
    yielder.yield number
  end
end
p triangular_numbers.first(2)
