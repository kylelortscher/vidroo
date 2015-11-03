class AddingRandomstringGameTypeofvideoToVideosTable < ActiveRecord::Migration
  def change
  	add_column :videos, :game, :string
  	add_column :videos, :videotype, :string
  	add_column :videos, :vidchooser, :string
  end
end
