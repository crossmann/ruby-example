require_relative 'CsvReader'

reader = CsvReader.new
reader.read_csv_book('book.csv')
puts "#{reader.total_cost}"

