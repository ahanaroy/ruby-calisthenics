class RockPaperScissors

  # Exceptions this class can raise:
  class NoSuchStrategyError < StandardError ; end

  def self.winner(player1, player2)
    # YOUR CODE HERE
    case player1[1]
    when 'R'
      if player2[1]=='S' then player1
      elsif player2[1]=='P' then player2
      elsif player2[1]=='R' then player1
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    when 'S'
      if player2[1]=='P' then player1
      elsif player2[1]=='R' then player2
      elsif player2[1]=='S' then player1
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    when 'P'
      if player2[1]=='R' then player1
      elsif player2[1]=='S' then player2
      elsif player2[1]=='P' then player1
      else
        raise NoSuchStrategyError, "Strategy must be one of R,P,S"
      end
    end
  end

  def self.tournament_winner(tournament)
    # YOUR CODE HERE
    winner(tournament[0],tournament[1])
    # tried a lot but couldn't fathom the resursive case :-(
  end

end
