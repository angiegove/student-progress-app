class Progress < ApplicationRecord
  self.table_name = 'progress'
  belongs_to :student
  has_one :lesson
  has_one :part
end
