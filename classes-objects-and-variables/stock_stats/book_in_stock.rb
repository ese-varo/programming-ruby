class BookInStock

  attr_reader   :isbn
  attr_accessor :price

  def initialize(isbn, price)
    @isbn   = isbn
    @price  = Float(price)
  end

  def price=(new_price)
    @price = new_price
  end

  def price_in_cents
    Integer(price*100 + 0.5)
  end

  def price_in_cents=(cents)
    @price = cents / 100.0
  end
end

book = BookInStock.new('isbn1', 33.80)
puts "ISBN      = #{book.isbn}"
puts "Price     = #{book.price}"
book.price = book.price * 0.75      # discount price
puts "New price = #{book.price}"
puts "Price in cents = #{book.price_in_cents}"
