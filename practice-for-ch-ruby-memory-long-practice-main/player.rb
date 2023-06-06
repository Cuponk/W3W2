class Player
    def get_move1
       puts 'enter move'
       gets.chomp.split { |n| n.to_i }
    end

    def get_move2
        puts 'enter move'
        gets.chomp.split { |n| n.to_i }
    end
end