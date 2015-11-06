class AddchannelnameToVideos < ActiveRecord::Migration
  def change
  	add_column :videos, :channel, :string
  end
end
