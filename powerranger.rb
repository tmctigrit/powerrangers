class Person

  def initialize(name, caffeine_level)
    @name = name.capitalize
    @caffeine_level = caffeine_level
  end

  def run(miles)
    puts "#{@name} ran #{miles} miles."
  end

  def scream(noise)
    puts "#{noise.upcase}!!!!"
  end

  def drink_coffee(cups)
    @caffeine_level += cups
    puts "#{@name}'s caffeine level is #{@caffeine_level}.  Yowza!"
  end

end


class PowerRanger
end

class EvilNinja
end

person1 = Person.new("trish", 4)

person1.run(10)

person1.scream("ahhh")

person1.drink_coffee(4)

person1.drink_coffee(4)