class Band < ApplicationRecord
  has_many :appointments
  has_many :stages, through: :appointments
  has_many :schedules, through: :appointments 
end
