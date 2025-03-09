class CreateDiscussionRoomReplies < ActiveRecord::Migration[8.0]
  def change
    create_table :discussion_room_replies do |t|
      t.string :user_name
      t.string :password
      t.string :ip
      t.string :timestamp
      t.references :user, null: true, foreign_key: true
      t.references :discussion_room_post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
