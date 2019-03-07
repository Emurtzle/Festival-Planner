class ScheduleAppointment < ApplicationRecord
  belongs_to :schedule
  belongs_to :appointment

  validate :validate_time, on: :create

  def validate_time
    self.schedule.validate_time
  end
end
