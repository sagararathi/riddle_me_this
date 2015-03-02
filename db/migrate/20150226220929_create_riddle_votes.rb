class CreateRiddleVotes < ActiveRecord::Migration
  def change
    create_table :riddle_votes do |t|
      t.integer :user_id, null: false
      t.integer :riddle_id, null: false
    end
  end
end
