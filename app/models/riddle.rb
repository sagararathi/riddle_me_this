class Riddle < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_many :riddle_votes

  #  def self.top5 answered_only = false
  #   result = []
  #   relation = select("riddles.id, count(riddle_votes.id) AS vote_count").
  #   joins(:riddle_votes).
  #   group("riddles.id").
  #   order("vote_count DESC").
  #   limit(5)
  #   if answered_only
  #     relation = relation.where('riddles.answer is not null')
  #   end

  #   relation.each do |rid|
  #     result << Riddle.find(rid.id)
  #   end
  #   result
  # end

 def self.top5 answered_only = false
    rel = select("riddles.id, riddles.title, riddles.body, riddles.answer, riddles.user_id, riddles.created_at, riddles.update_at, count(riddle_votes.id) as vote_count").
    joins(:riddle_votes).
    group(["riddles.id", "riddles.title", "riddles.body", "riddles.answer", "riddles.user_id", "riddles.created_at", "riddles.update_at"]).
    order(" vote_count DESC").
    limit(5)
    rel = rel.where(answered_only: true) if answered_onlys
  end


  def self.all_in_order answered_only = false
    result = []
    relation = select("riddles.id, count(riddle_votes.id) AS vote_count").
    joins(:riddle_votes).
    group("riddles.id").
    order("vote_count DESC")
    if answered_only
      relation = relation.where('riddles.answer is not null')
    end

    relation.each do |rid|
      result << Riddle.find(rid.id)
    end
    result
  end

    def vote_count
      riddle_votes.count
    end
end