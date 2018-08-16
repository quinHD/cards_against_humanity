class User < ApplicationRecord
  has_many :cards
  has_many :decks
  has_many :players
end
