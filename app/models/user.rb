class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  # associations
  has_many :memes
  has_and_belongs_to_many :voted_memes, class_name: "Meme"
  has_many :comments
  has_many :commented_memes, through: :comments, source: :meme
  # validators
  validates :username, :email, presence: true, uniqueness: true
end
