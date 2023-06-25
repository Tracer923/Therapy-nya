namespace :remind_happy do
  desc "ハッピーメモリーをランダムなタイミングでメールで送信します。"
  task remind_mail: :environment do
    reminders = Reminder.where(scheduled_at: ..Time.current, reminded: false)
    reminders.each do |reminder|
      # UserMailer.with(user: user).weekly_summary.deliver_now
      happy_memory = reminder.happy_memory
      HappyMemory.transaction do
        reminder.update!(reminded: true)   # 送信済みにする処理
        happy_memory.reminders.create!(scheduled_at: Reminder::REMIND_PERIOD, reminded: false)   #３か月毎にリマインドメールを送る処理
      end
    end
  end
end
