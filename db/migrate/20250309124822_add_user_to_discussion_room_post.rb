class AddUserToDiscussionRoomPost < ActiveRecord::Migration[8.0]
  def change
    add_reference :discussion_room_posts, :user, null: true, foreign_key: true
  end
end
