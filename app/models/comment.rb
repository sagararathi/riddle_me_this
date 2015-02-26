class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :riddle
  has_many :comment_votes
end