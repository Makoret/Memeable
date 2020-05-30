class Category < ApplicationRecord
  # associations
  has_many :memes
  # validates
  validates :name, uniqueness: true, presence: true
end
