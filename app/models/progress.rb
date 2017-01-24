class Progress < ApplicationRecord
  include ActiveModel::Dirty

  self.table_name = 'progress'

  before_save :update_if_next_lesson

  belongs_to :lesson
  belongs_to :part

  def lesson_part
    "l#{self.lesson.number} p#{self.part.number}"
  end

  def available_lessons
    lesson_numbers = (1..100).to_a
    part_numbers = (1..3).to_a

    lesson_parts = []

    lesson_numbers.each.map do |lesson|
      part_numbers.map do |part|
        lesson_parts << "l#{lesson} p#{part}"
      end
    end
  end

private
#please note: Pseudocode it is not working but to show where I got up to in my thinking
  def update_if_next_lesson
    if self.lesson_id.changed? || self.part_id.changed?
      avaliable_lessons.each_with_index do |lesson, index|
        next_lesson = lesson[i+1]
        if next_lesson_in_list
          self.save
        else
          #Error ActiveRecord::RecordNotSaved: Failed to save the record
        end
      end
    end
  end
end
