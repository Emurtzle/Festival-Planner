class Stage < ApplicationRecord
  belongs_to :festival

  has_many :appointments
  has_many :bands, through: :appointments

  def ordered_appointments
    self.appointments.sort_by(&:start)
  end
end
