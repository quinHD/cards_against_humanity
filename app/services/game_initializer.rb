class GameInitializer
  attr_reader :game

  def initialize(decks)
    @decks = decks
    @game ||= Game.new
  end

  def run
    game.cards = cards
    game.id ? true : game.save
  end


  attr_reader :decks

  def cards
    @_cards ||= Card.joins(:decks).where(decks: {id: decks}).distinct
  end
end
