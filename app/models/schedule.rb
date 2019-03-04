class Schedule < ApplicationRecord
  has_many :appointments
  has_many :bands, through: :appointments

  belongs_to :festival
  belongs_to :user
end
