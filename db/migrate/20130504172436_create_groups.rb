class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.string :name
      t.string :caption
      t.integer :member_limit
    end
  end
end
