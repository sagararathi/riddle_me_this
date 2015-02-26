class CreateRiddles < ActiveRecord::Migration
  def change
    create_table :riddles do |t|
      t.text :body
      t.text :answer
      t.integer :user_id
    end
  end
end
