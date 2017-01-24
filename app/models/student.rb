class Student < ApplicationRecord
  belongs_to :teacher, optional: true
  has_one :progress

  accepts_nested_attributes_for :progress

end
