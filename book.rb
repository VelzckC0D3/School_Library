require_relative 'rental'

class Book
  attr_accessor :title, :author
  attr_reader :rentals

  def initialize(title, author)
    @title = title
    @author = author
    @rentals = []
  end

  def add_rental(person, date)
    rental = Rental.new(date, self, person)
    @rentals << rental
  end

  def many_rentals
    puts "The book '#{title}' has been rented '#{rentals.length}' time(s)"
  end
end
