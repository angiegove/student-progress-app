class CreateStudents < ActiveRecord::Migration[5.0]
  def self.up
    create_table :students do |t|
      t.string :username
      t.string :name
      t.string :surname
      t.integer :progress_id

      t.timestamps
    end
  end

  def self.down
    drop_table :students
  end
end
