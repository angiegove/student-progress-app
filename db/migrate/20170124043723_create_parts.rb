class CreateParts < ActiveRecord::Migration[5.0]
  def self.up
    create_table :parts do |t|
      t.integer :number
      t.string :description
      t.string :content
      t.integer :lesson_id

      t.timestamps
    end
  end

  def self.down
    drop_table :parts
  end
end
