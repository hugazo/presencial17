class Dog
  attr_reader :nombre, :raza, :color
  def initialize(hash)
    @nombre = hash[:nombre]
    @raza = hash[:raza]
    @color = hash[:color]
  end
end

propiedades = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog = Dog.new(propiedades)
puts "Mi perro se llama #{dog.nombre}, es de raza #{dog.raza} y color #{dog.color}"
