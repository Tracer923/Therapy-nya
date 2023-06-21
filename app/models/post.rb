class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :reminders, dependent: :destroy
  
  validates :content,presence:true,length:{maximum:200}
  
  def liked_by?(user)
    user.present? && likes.where(user_id: user.id).exists?
  end
end
