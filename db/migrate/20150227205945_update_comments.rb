class UpdateComments < ActiveRecord::Migration
  def change
    change_column(:comments, :user_id, :integer, :null => true)
    change_column(:comments, :riddle_id, :integer, :null => true)
  end
end
