raw_text = %{The problem breaks down into two parts. First, given some text
as a string, return a list of words. That sounds like an array. Then, build
a count for each distinct word. That sounds like a use for a hash---we can
index it with the word and use the corresponding entry to keep a count.}

def word_from_string(string)
  string.downcase.scan(/[\w]+/)
end

def count_words(words_list)
  counts = Hash.new(0)
  for word in words_list
    counts[word] += 1
  end
  counts
end
word_list = word_from_string(raw_text)
counts = count_words(word_list)
sorted = counts.sort_by {|word, count| count}

top_five =sorted.last(5)


for i in 0...top_five.length
  word = top_five[i][0]
  count = top_five[i][1]
  puts "#{word}: #{count}"
end

top_five.each do |word, count|
  puts "#{word}: #{count}"
end

puts top_five.map {|word, count| "#{word} => #{count}"}

