require_relative "player"
require_relative "ai"

class Board

    def self.populated(board)
        cards = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']
            i = 0
            while i < 8
                row = rand(0...4)
                col = rand(0...4)
                row2 = rand(0...4)
                col2 = rand(0...4)
                if board[row][col] == nil  && board[row2][col2] == nil
                    board[row][col] = cards[i]
                    board[row2][col2] = cards[i]
                    i += 1
                end
            end 
            board         
        
    end

    def initialize
        @board = Board.populated(Array.new(4) {Array.new(4)})
        @player = Player.new
        @ai = AI.new
        @first_move = @player.get_move1
        @second_move = @player.get_move2
        @hide = Array.new(4) {Array.new(4)}
    end 

    def [](pos)
        @board[pos[0]][pos[1]]
    end

    def []=(pos, val)
        @board[pos[0]][pos[1]] = val
    end

    def render
        @hide.each do |row|
            puts row
        end
    end

    def little_won?
       if @board[@first_move] == @board[@second_move]
        @hide[@first_move] += @board[@first_move]
        @hide[@second_move] += @board[@second_move]
        return true 
       end
    end

    def won?
        !@hide.empty?        
    end

    def reveal(pos)
        if !already_chosen(pos)
        show_pos_board = @hide.map{|ele| ele}
        show_pos_board[pos[0]][pos[1]] = @hide[pos]
        show_pos_board
        end
    end

    def already_chosen(pos)
        @hide.empty?(pos)
    end

end