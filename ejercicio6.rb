class Product
  attr_reader :name, :prices
  def initialize(name, *prices)
    @name = name
    @prices = prices.map(&:to_i)
  end

  def average_price
    prices.inject(0) { |sum, x| sum + x } / prices.length
  end
end

products_list = []
data = []
File.open('catalogo.txt', 'r') { |file| data = file.readlines }
data.each do |prod|
  ls = prod.split(', ')
  products_list << Product.new(*ls)
end

products_list.each { |x| puts "#{x.name} #{x.prices}" }
puts products_list[0].average_price
