class RemovingUncessaryVideosColumn < ActiveRecord::Migration
  def change
  	remove_column :videos, :random
  end
end
