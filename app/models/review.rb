class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, length: { minimum: 1 }
  validates :rating, length: { minimum: 1 }, numericality: true, inclusion: { in: (0..5) }
end
