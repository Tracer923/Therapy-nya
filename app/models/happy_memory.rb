class HappyMemory < ApplicationRecord
  belongs_to :user
  has_many :reminders, dependent: :destroy
end
