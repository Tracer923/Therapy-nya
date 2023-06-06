class Post < ApplicationRecord
  belongs_to :user
  has_many :comment, dependent: :destroy
  has_many :like, dependent: :destroy
  has_many :notification, dependent: :destroy
  has_many :reminder, dependent: :destroy
end
