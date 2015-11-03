class AddingRandomnumberColumnToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :vidchooser, :string
  end
end
