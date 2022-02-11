class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # Check if invalid strategies used
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if !player1[1].downcase.match?(/r|p|s/) || !player2[1].downcase.match?(/r|p|s/)
    
    # Player 1 Rock, player 2 Scissors
    if player1[1].downcase.match?(/r/) && player2[1].downcase.match?(/s/) then game_winner = player1
    # Player 1 Scissors, player 2 Paper
    elsif player1[1].downcase.match?(/s/) && player2[1].downcase.match?(/p/) then game_winner = player1
    # Player 1 Paper, player 2 Rock
    elsif player1[1].downcase.match?(/p/) && player2[1].downcase.match?(/r/) then game_winner = player1
    # Both players use same strategy
    elsif player1[1].downcase == player2[1].downcase then game_winner = player1
    # All other scenarios
    else game_winner = player2
    end

    # Return array with player/strategy string for winning player
    game_winner
  end

  # Will recurse until matches are one, then go back "up" a leval and recurse again
  # Final "recursion"/"base case" set will be the "final round" of the tournament, then
  # the original instance will return the winner of the tournament as an array of player/
  # strategy strings
  def self.tournament_winner(tournament)
    # Base case: tournament in instance is a pair of arrays with player/strategy strings
    if tournament[0][0].instance_of?(String)
      game_winner = winner(tournament[0],tournament[1])

      # Return of a base case condition
      return game_winner
    end

    # Recursive case: take supplied string and recurse until final winners for each half 
    # are reached, then match those players against each other
    game_winner = winner(tournament_winner(tournament[0]),tournament_winner(tournament[1]))

    # Return of recursive cases
    return game_winner
  end

end
