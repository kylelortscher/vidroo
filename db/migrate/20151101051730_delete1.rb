class Delete1 < ActiveRecord::Migration
  def change
  	drop_table :likes
  	drop_table :user_likes
  end
end
