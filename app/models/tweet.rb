class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: {in: 5..10, message: 'Too short!'}
  # validates :content, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :content, format: { with: /\A[a-zA-Z]+\z/, message: "Letters only"}
end
