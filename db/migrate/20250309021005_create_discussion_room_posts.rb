class CreateDiscussionRoomPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :discussion_room_posts do |t|
      t.string :title
      t.string :user_name
      t.string :password, null: true
      t.boolean :is_member
      t.string :coin_code
      t.string :coin_name
      t.integer :views
      t.integer :likes
      t.string :ip
      t.string :timestamp

      t.timestamps
    end
  end
end
