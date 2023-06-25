class ChengeRemindPost < ActiveRecord::Migration[6.1]
  def change
    rename_column :reminders, :post_id, :happy_memory_id
  end
end
