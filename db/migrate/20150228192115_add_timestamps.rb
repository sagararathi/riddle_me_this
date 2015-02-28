class AddTimestamps < ActiveRecord::Migration
  def change
    add_column(:riddles, :created_at, :datetime)
    add_column(:riddles, :updated_at, :datetime)
    add_column(:comments, :created_at, :datetime)
    add_column(:comments, :updated_at, :datetime)
    add_column(:users, :created_at, :datetime)
    add_column(:users, :updated_at, :datetime)
  end
end
