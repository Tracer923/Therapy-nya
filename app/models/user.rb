class User < ApplicationRecord

  attr_accessor :name

  has_many :reminder, dependent: :destroy
  has_many :comment, dependent: :destroy
  has_many :post, dependent: :destroy
  has_many :like, dependent: :destroy
  has_many :notification, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
