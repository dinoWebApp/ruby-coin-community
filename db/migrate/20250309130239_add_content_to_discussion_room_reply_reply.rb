class AddContentToDiscussionRoomReplyReply < ActiveRecord::Migration[8.0]
  def change
    add_column :discussion_room_reply_replies, :content, :string
  end
end
