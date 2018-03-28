class Tweet < ApplicationRecord
  belongs_to :user
  validates :content, presence: { message: 'Please enter some content!'}
end
