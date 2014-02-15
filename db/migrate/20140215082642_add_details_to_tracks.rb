class AddDetailsToTracks < ActiveRecord::Migration
  def change
    add_column :tracks, :verse1, :text
    add_column :tracks, :verse2, :text
    add_column :tracks, :verse3, :text
  end
end
