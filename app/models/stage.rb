class Stage < ApplicationRecord
  belongs_to :festival

  has_many :appointments
  has_many :bands, through: :appointments
end
