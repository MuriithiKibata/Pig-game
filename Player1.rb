class Player
attr_accessor :name, :score
def initialize()
    @score = 0
end

def roll
(1..6).to_a.sample
end
end

player1 = Player.new
player2 = Player.new

until player1.score >= 100 || player2.score >= 100
roll = player1.roll
puts "Player 1 had a score of #{player1.score}"
if  roll == 1  
    player1.score = 0
else
    player1.score += roll
end
puts "Player1 has current score of #{player1.score}"
gets
roll2 = player2.roll
puts "Player 2 had a score of #{player2.score}"
if  roll2 == 1  
    player2.score = 0
else
    player2.score += roll2
end
puts "Player2 has current score of #{player2.score}"
gets
end