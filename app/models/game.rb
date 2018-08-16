class Game < ApplicationRecord
  has_many :players
  has_and_belongs_to_many :decks
  has_and_belongs_to_many :cards
  has_and_belongs_to_many :used_cards, table_name: :used_cards_games
end
