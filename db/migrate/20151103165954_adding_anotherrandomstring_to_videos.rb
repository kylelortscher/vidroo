class AddingAnotherrandomstringToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :random, :string, default: [*('A'..'Z')].sample(8).join
  end
end
