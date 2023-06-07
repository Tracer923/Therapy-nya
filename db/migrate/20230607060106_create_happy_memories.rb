class CreateHappyMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :happy_memories do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
