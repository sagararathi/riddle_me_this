class Riddle < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :riddle_votes
end