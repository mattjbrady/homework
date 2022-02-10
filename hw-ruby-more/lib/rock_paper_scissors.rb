class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # Check if invalid strategies used
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if !player1[1].downcase.match?(/r|p|s/)|| !player2[1].downcase.match?(/r|p|s/)
    
    # Player 1 Rock, player 2 Scissors
    if player1[1].downcase.match?(/r/) && player2[1].downcase.match?(/s/) then winner = player1
    # Player 1 Scissors, player 2 Paper
    elsif player1[1].downcase.match?(/s/) && player2[1].downcase.match?(/p/) then winner = player1
    # Player 1 Paper, player 2 Rock
    elsif player1[1].downcase.match?(/p/) && player2[1].downcase.match?(/r/) then winner = player1
    # Both players use same strategy
    elsif player1[1].downcase == player2[1].downcase then winner = player1
    # All other scenarios
    else winner = player2
    end

    winner
  end

  def self.tournament_winner(tournament)
    # your code here
  end

end
