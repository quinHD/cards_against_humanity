class GameInitializer
  def initialize(decks:, players:)
    @decks = decks
    @players = players
  end

  def run
    game
  end

  private

  attr_reader :decks, :players

  def game
    @_game ||= Game.new(cards: cards, players: players)
  end

  def cards
    @_cards ||= Card.joins(:decks).where(decks: {id: decks}).distinct
  end
end
