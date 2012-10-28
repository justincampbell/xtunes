class RemovePasswordHashAndPasswordSaltToUser < ActiveRecord::Migration
  def up
    remove_column :users, :password_hash
    remove_column :users, :password_salt
  end

  def down
    add_column :users, :password_salt, :string
    add_column :users, :password_hash, :string
  end
end
