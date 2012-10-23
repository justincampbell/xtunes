class AddAudioFileToSong < ActiveRecord::Migration
  def change
    add_column :song, :audiofile, :string
  end
end
