class User < ApplicationRecord
  has_many :discussion_room_posts
  has_many :discussion_room_replies
  has_many :discussion_room_reply_replies
end
