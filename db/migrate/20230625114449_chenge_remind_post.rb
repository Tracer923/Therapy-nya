class ChengeRemindPost < ActiveRecord::Migration[6.1]
  def change
    remove_column :reminders, :post_id, :integer
    add_reference :reminders, :happy_memory, foreign_key: true, null: false
  end
end
