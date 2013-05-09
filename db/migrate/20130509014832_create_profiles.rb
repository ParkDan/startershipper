class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :meet_pref
      t.string :avail_times
      t.text :bio
      t.integer :user_id
    end
  end
end
