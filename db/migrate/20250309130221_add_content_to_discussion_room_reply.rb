class AddContentToDiscussionRoomReply < ActiveRecord::Migration[8.0]
  def change
    add_column :discussion_room_replies, :content, :string
  end
end
