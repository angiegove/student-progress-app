class Student < ApplicationRecord
  belongs_to :teacher
  has_one :progress
end
