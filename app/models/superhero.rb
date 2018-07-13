class Superhero

  @@superheroes = []

  attr_reader :name, :power, :biography

  def initialize(name, power, biography)
    @name = name
    @power = power
    @biography = biography
    @@superheroes << self
  end

  def self.all
    @@superheroes
  end

end
