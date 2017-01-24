class CreateProgress < ActiveRecord::Migration[5.0]
  def self.up
    create_table :progress do |t|
      t.integer :lesson_id
      t.integer :part_id
      t.integer :student_id

      t.timestamps
    end
  end

  def self.down
    drop_table :progress
  end
end
