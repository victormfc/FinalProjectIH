class Sport < ApplicationRecord
	before_save { self.name = name.downcase }
	# before_save { self.id = Sport.where(name: self.name).first_or_create.id }
  has_many :appointments

  has_many :teachers
end
