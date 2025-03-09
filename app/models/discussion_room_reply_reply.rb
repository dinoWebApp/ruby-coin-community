class DiscussionRoomReplyReply < ApplicationRecord
  belongs_to :user
  belongs_to :discussion_room_reply
end
