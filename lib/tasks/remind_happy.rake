namespace :remind_happy do
  desc "ハッピーメモリーをランダムなタイミングでメールで送信します。"
  task remind_mail: :environment do
    reminders = Reminder.where(scheduled_at: ..Time.current, reminded: false)
    reminders.each do |reminder|
      happy_memory = reminder.happy_memory
      user = happy_memory.user
      HappyMemoryMailer.with(user: user).remind_mail.deliver_now
      HappyMemory.transaction do
        reminder.update!(reminded: true)   # 送信済みにする処理
        happy_memory.reminders.create!(scheduled_at: Reminder::REMIND_PERIOD.months.since, reminded: false)   #３か月毎にリマインドメールを送る処理
      end
    end
  end
end
