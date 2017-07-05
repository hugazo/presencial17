class Morseable
  def initialize(number)
    @number = number
  end

  def generate_hash(number)
    hash = {}
    hash[0] = '-----'
    hash[1] = '.----'
    hash[2] = '..---'
    hash[3] = '...--'
    hash[4] = '....-'
    hash[5] = '.....'
    hash[6] = '-....'
    hash[7] = '--...'
    hash[8] = '---..'
    hash[9] = '----.'
    hash[number]
  end

  def to_morse
    self.generate_hash(@number)
  end
end

m = Morseable.new(3)
print m.to_morse
