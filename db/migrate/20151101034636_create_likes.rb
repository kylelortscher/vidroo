class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
    	t.boolean :like
    	t.integer :user_id
    	t.integer :video_id
    	t.timestamps
    end
  end
end
