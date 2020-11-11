class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, presence: true
  # validates :content, length: { minimum: 20 }
  validates :rating, numericality: true
  validates :rating, inclusion: { in: (0..5), message: "Please enter a rating from 0 to 5." }
end
