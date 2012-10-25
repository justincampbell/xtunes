class AddUserIdAndSongIdToPurchases < ActiveRecord::Migration
  def change
    add_column :purchases, :user_id, :integer
    add_column :purchases, :song_id, :integer
  end
end
