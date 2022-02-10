class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def invalid_strategy?(player)
    player[1].downcase.match(/r|p|s/) != 1
  end

  def self.winner(player1, player2)
    raise NoSuchStrategyError, "Strategy must be one of R,P,S" if player1[1].downcase.match(/r|p|s/) != 1 || player2[1].downcase.match(/r|p|s/) != 1 
  end

  def self.tournament_winner(tournament)
    # your code here
  end

end
