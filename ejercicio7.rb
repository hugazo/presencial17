class Product
  attr_reader :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices.map(&:to_i)
  end

  def average_price
    prices.inject(0) { |sum, x| sum + x } / prices.length
  end

  def delete_xs
    "#{@name} #{@prices[0..2]}".gsub /\[|\]/, ''
  end
end

products = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products << Product.new(*ls)
end

File.open('catalogo2.txt', 'w') { |file| file.puts products.map(&:delete_xs) }
