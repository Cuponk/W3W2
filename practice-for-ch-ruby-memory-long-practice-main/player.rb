class Player

    def get_move
        puts 'enter move'
        move = gets.chomp.split { |n| n.to_i }
        if !valid?(move)
            raise "Error"
        end
        move
    end

    def valid?(pos)
        return true if (pos[0] > -1 && pos[0] <= 3) && (pos[1] > -1 && pos[1] <= 3)
    end



end