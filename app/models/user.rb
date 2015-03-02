class User < ActiveRecord::Base
  has_secure_password

  validates :username, presence: true
  validates :email, presence: true
  validates_uniqueness_of :email

  has_many :riddles
  has_many :comments
  has_many :riddle_votes
  has_many :comment_votes
end