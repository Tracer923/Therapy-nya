class Reminder < ApplicationRecord

  belongs_to :happy_memory
  


  REMIND_PERIOD = 3   #マジックナンバーの使用を避けるため




end
