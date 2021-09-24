class Spaceship
    attr_reader :name
    attr_reader :speed

    def initialize(name)
        @name = name
        @cargo = []
        @speed = 0
        @vessels = Hash.new { [] }
    end

    def [](type)   #return the value of the type key in @vessels hash
        @vessels[type]
    end

    def []=(type, vehicles) #vehicles goes into the @vessels hash at type key!!
        @vessels[type] = vehicles
    end

    def <<(cargo)      #puts it into the cargo instance variable
        @cargo << cargo
    end

    def <=>(other)   #Spaceship operator - used to make objects sortable
        name <=> other.name # compares 2 objects, return 0 if they are equal
    end  # 1 if first is less than second, 2 if vice-versa

    def +@      # Binary operators
        @speed += 10
    end

    def -@
        @speed -= 10
    end

    def !   # Not operator   - shouldn't use it frequently
        puts "Self destruct sequence initiated"
    end
    
end

ship1 = Spaceship.new("Serenity")


class Lander; end
ship1[:landers] = [Lander.new, Lander.new]
puts "Landers: #{ship1[:landers].inspect}"

class CargoPod; end
cargo_pod = CargoPod.new
ship1 << cargo_pod
p ship1

ship2 = Spaceship.new("Dreadnought")
ship3 = Spaceship.new("Tranquillity")

p [ship1, ship2, ship3].sort.map { |s| s.name}

+ship1
puts "Speed: #{ship1.speed}"
-ship1
puts "Speed: #{ship1.speed}"

!ship1

if !ship1
    puts "Ship isn't there"
end




