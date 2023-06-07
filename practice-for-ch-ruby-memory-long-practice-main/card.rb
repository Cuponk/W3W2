class Card
    attr_reader :cards

    def initialize
        @cards = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H']
    end

    def populated(board)
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

end