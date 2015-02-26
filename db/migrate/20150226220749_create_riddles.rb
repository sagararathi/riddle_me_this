class CreateRiddles < ActiveRecord::Migration
  def change
    create_table :riddles do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.text :answer
      t.integer :user_id, null: false
    end
  end
end
