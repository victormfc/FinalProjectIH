class Appointment < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :sport
end
