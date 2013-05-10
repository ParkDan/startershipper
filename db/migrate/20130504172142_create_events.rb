class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.string :caption
      t.date :date
      t.time :start_time
      t.time :end_time
      t.timestamp :timestamp
      t.integer :user_id
      t.integer :group_id
    end
  end
end
