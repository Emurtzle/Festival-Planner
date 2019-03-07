class ScheduleAppointment < ApplicationRecord
  belongs_to :schedule
  belongs_to :appointment

  # validate :validate_time, on: :update

  # def validate_time
  #   self.schedule.validate_time
  # end
end
