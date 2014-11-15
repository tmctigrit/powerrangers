module Punching
    def punch(person)
    if @strength > 5
      puts "#{person} goes flying into the air!  You packed a mean punch!"
      @caffeine_level -= 2
    elsif @strength <= 5
      puts "#{person} screams and runs away! What a baby!"
      @caffeine_level -= 2
    end
  end
end


class Person
  attr_accessor :name, :caffeine_level
  def initialize(name, caffeine_level=0)
    @name = name.capitalize
    @caffeine_level = caffeine_level
  end

  def run(miles)
    if @caffeine_level < 2
      puts "Phenin' for caffeine!  You need more coffee before you can run!"
    else
      puts "It's power run time!  You run #{miles} miles!"
    end
  end

  def scream(noise)
    if @caffeine_level < 2
      puts "Not enough energy.  Get yourself an espresso shot!"
    else
      puts "AHHHHHHHHH!!!!!!!!"
    end
  end

  def drink_coffee(cups)
    @caffeine_level += cups
    puts "Your caffeine level is #{@caffeine_level}.  Yowza!"
  end

end


class PowerRanger < Person
  include Punching
  attr_accessor :name, :caffeine_level, :strength, :color
  def initialize(name, caffeine_level, strength, color)
    super(name, caffeine_level)
    @strength = strength
    @color = color
  end

  def rest
    @strength += 2
    puts "You awake feeling stronger and refreshed.  It's Ranger time!"
  end

  def use_megazord
    puts "KABOOM!  You served up a megazord punch with a strength of 5000!  Strength level has been reset to 1."
    @strength = 1
  end

end

class EvilNinja < Person
  include Punching
  attr_accessor :name, :caffeine_level, :strength, :evil_level

  def initialize(name, caffeine_level, strength, evil_level)
    super(name, caffeine_level)
    @strength = strength
    @evil_level = evil_level
  end

  def cause_mayhem(person)
    @caffeine_level = 0
    puts "You've caused mayhem! #{person.name}'s caffeine level has been reduced to #{@caffeine_level}.  Terrifying!"
  end

  def fight_scene

  end

end

trish = Person.new("Trish",8)
jenn = Person.new("Jenn", 3)
pink = PowerRanger.new("Pink Ranger", 2, 3, "pink")
blue = PowerRanger.new("Blue Ranger", 3, 4, "royal blue")
matsumuro = EvilNinja.new("Matsumuro", 5, 50, 10)
rafiki = EvilNinja.new("Rafiki", 3, 20, 50)




