class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.string :user_id
      t.string :group_id

      t.timestamps
    end
  end
end
