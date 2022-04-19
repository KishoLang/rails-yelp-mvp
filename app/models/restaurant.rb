class Restaurant < ApplicationRecord

  CATEGORIES = %w[chinese japanese italian french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :name, length: { minimum: 1 }
  validates :address, length: { minimum: 1 }
  validates :category, length: { minimum: 1 }, inclusion: { in: CATEGORIES }

end
