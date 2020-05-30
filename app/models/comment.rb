class Comment < ApplicationRecord
  # associations
  belongs_to :user
  belongs_to :meme, counter_cache: true
  # validators
  validates :body, presence: true
  # counters

end
