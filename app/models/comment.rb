class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :riddle
  has_many :comment_votes
  validates :body, presence: true

  def vote_count
     comment_votes.count
  end
end