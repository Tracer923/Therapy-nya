class CreateNegativeMemories < ActiveRecord::Migration[6.1]
  def change
    create_table :negative_memories do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
