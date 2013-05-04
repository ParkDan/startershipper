class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :caption
      t.timestamp :timestamp
      t.integer :user_id
      t.integer :group_id
    end
  end
end
