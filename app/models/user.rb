class User < ApplicationRecord
  has_many :opinions, foreign_key: 'AuthorId', class_name: 'Opinion'
  has_many :followed, foreign_key: 'followerId', class_name: 'Following'
  has_many :followers, foreign_key: 'followedId', class_name: 'Following'
  has_many :likes, foreign_key: 'UserId', class_name: 'Like'
  before_save { self.Username = self.Username.downcase }
  validates :Username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 3, maximum: 50 }
  validates :Fullname, presence: true, length: { minimum: 3, maximum: 100 }
  mount_uploader :Photo, AvatarUploader
  mount_uploader :CoverImage, AvatarUploader

  def self.user_followers(id, curr_user_id)
    Following.where(followedId: id).where.not(followerId: curr_user_id).order(created_at: :desc).limit(5)
  end

  def self.all_users(user_id)
    User.where('id != ?', user_id)
  end
end
