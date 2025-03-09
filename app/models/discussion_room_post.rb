class DiscussionRoomPost < ApplicationRecord
  has_rich_text :content
  belongs_to :user, optional: true
end
