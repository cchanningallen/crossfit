class AddPasswordHashPasswordSaltAdminToUser < ActiveRecord::Migration
  def change
    add_column :users, :password_hash, :string
    add_column :users, :password_salt, :string
    add_column :users, :admin, :boolean
  end
end
