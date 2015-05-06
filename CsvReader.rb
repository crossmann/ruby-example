require 'csv'
require_relative 'book_in_stock.rb'

# read data from CSV file (book.csv)
class CsvReader
  def initialize
    @books_in_stock =[]
  end

  def read_csv_book(csv_filename)
    CSV.foreach(csv_filename, headers: true) do |row|
      @books_in_stock << BookInStock.new(row['ISBN'], row['Price'])
    end
  end

  def total_cost
    sum = 0.0
    @books_in_stock.each do |book|
      sum += book.price
    end
    sum
    puts "Total cost: #{sum}"
  end
end
