class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :name
      t.string :caption
      t.timestamp :timestamp
      t.integer :user_id
      t.integer :group_id
    end
  end
end
