class Festival < ApplicationRecord
  has_many :stages
  has_many :appointments, through: :stages

  has_many :schedules
end
