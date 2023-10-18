class Review < ApplicationRecord
  belongs_to :restaurant

  # VALID_RATING = 0..5

  validates :rating, numericality: { greater_than_or_equal_to: 0, less_than_or_equal_to: 5, only_integer: true }

  validates :content, presence: true
end
