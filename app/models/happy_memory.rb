class HappyMemory < ApplicationRecord
  has_many :reminders, dependent: :destroy
end
