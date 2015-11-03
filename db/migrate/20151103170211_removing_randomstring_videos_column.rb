class RemovingRandomstringVideosColumn < ActiveRecord::Migration
  def change
  	remove_column :videos, :vidchooser
  end
end
