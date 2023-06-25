class Reminder < ApplicationRecord
  belongs_to :user
  belongs_to :happy_memory
end
