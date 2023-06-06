class Board
    def initialize
        @board = Array.new(4) {Array.new(4)}
        @populate = []
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

    def populate
            i = 0
            while i < 8
                row = rand(0...@board.length)
                col = rand(0...@board.length)
                row2 = rand(0...@board.length)
                col2 = rand(0...@board.length)
                if @board[row][col].empty?  && @board[row2][col2].empty?
                    @board[row][col] = Card.cards[i]
                    @board[row2][col2] = Card.cards[i]
                end
            end            
        
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
            self.[pos]
        end
    end

    def already_chosen(pos)
        Card.hide.empty?(pos)
    end

end