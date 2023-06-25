class TestJob < ApplicationJob
  queue_as :default

  def perform
    User.find(2).update(email: 'yuya5@gmail.com')
  end
end
