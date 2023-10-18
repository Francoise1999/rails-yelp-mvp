class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  VALID_CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :category, inclusion: { in: VALID_CATEGORY }

  validates :name, :address,  presence: true
end
