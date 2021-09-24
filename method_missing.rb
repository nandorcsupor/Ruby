class Cargo
    private

    def find(attrs)
        puts "Finding cargo by #{attrs.inspect}"
    end
end

class Spaceship
    attr_reader :cargo

    def initialize
        @cargo = Cargo.new
    end
end

ship = Spaceship.new

ship.cargo.find_by_destination("Earth")
ship.cargo.find_by_weight_and_volume(100, 10)
#ship.cargo.find_by_weight_or_volume(100, 10)

