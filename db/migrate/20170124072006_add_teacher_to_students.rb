class AddTeacherToStudents < ActiveRecord::Migration[5.0]
  def self.up
    add_column :students, :teacher_id, :integer
  end

  def self.down
    remove_column :students, :teacher_id, :integer
  end
end
