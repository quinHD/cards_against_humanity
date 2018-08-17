class Answer < ApplicationRecord
  belongs_to :user
  belongs_to :round
  has_many :card_selections
end
