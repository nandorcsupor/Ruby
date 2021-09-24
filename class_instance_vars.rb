class Spaceship         #They each get a copy of the variable, but only 1 per class!
    @thruster_count = 2 #Better than Class Variables!

    def self.thruster_count
        @thruster_count
    end
end

class SpritelySpaceship < Spaceship
    @thruster_count = 4
end

class EconolineSpaceship < Spaceship
    @thruster_count = 1
end

puts SpritelySpaceship.thruster_count
puts EconolineSpaceship.thruster_count
puts Spaceship.thruster_count
