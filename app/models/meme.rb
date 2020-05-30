class Meme < ApplicationRecord
  # associations
  belongs_to :category
  # TODO preguntar si es buena practica lo de fk aqui
  belongs_to :owner, class_name: "User", foreign_key: "user_id", counter_cache: true
  has_and_belongs_to_many :voters, class_name: "User"
  has_many :votes
  has_many :voters, through: :votes, source: :user
  has_many :comments
  has_many :commentators, through: :comments, source: :user
  # validators
  validates :title, uniqueness: true, presence: true
  validates :url_source, presence: true
  # counters
  
end
