class Spaceship
    def launch
        batten_hatches
        #do other fun activites
    end

    def batten_hatches
        puts "Batten the hatches!"
    end
    private :batten_hatches
end

ship = Spaceship.new
ship.send :batten_hatches