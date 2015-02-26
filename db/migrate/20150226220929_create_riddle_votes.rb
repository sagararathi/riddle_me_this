class CreateRiddleVotes < ActiveRecord::Migration
  def change
    create_table :riddle_votes do |t|
      t.integer :user_id
      t.integer :riddle_id
    end
  end
end
