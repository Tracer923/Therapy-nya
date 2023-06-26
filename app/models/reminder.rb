class Reminder < ApplicationRecord
  belongs_to :happy_memory
  
<<<<<<< Updated upstream
  REMIND_PERIOD = 3.months.since   #
=======

  REMIND_PERIOD = 3   #マジックナンバーの使用を避けるため

>>>>>>> Stashed changes
end
