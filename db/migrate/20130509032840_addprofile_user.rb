class AddprofileUser < ActiveRecord::Migration
  def change
    add_column :users, :profile_id, :integer
    add_column :users, :network_id, :integer
    add_column :profiles, :network_id, :integer
    add_column :groups, :network_id, :integer

  end
end
