class Progress < ApplicationRecord
  self.table_name = 'progress'
  belongs_to :lesson
  belongs_to :part
end
