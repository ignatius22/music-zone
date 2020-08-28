class Following < ApplicationRecord
  belongs_to :Follower, foreign_key: 'followerId', class_name: 'User'
  belongs_to :Followed, foreign_key: 'followedId', class_name: 'User'

  def self.find_friend_to_unfollow(sender_id, receiver_id)
    Following.where(followerId: sender_id).where(followedId: receiver_id)[0]
  end
end
