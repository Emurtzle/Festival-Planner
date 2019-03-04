class User < ApplicationRecord
  has_many :schedules
  has_many :appointments, through: :schedules
end
