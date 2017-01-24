class CreateLessons < ActiveRecord::Migration[5.0]
  def self.up
    create_table :lessons do |t|
      t.integer :number
      t.string :description
      t.string :content

      t.timestamps
    end
  end

  def self.down
    drop_table :lessons
  end
end
