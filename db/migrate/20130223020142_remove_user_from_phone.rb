class RemoveUserFromPhone < ActiveRecord::Migration
  def up
    remove_column :phones, :user
    remove_column :phones, :email
  end

  def down
    add_column :phones, :user, :string
    add_column :phones, :email, :string
  end
end
