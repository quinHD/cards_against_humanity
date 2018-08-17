class User < ApplicationRecord
  has_many :cards
  has_many :decks
  has_and_belongs_to_many :players
end
