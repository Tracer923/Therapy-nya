class CreateHappyRemind < ActiveRecord::Migration[6.1]
  def change
      remove_column :reminders, :user_id, :integer
      add_column :happy_memories, :user_id, :integer, null: false, foreign_key: true
      add_column  :reminders, :reminded, :boolean, null: false
  end
end
