class Appointment < ApplicationRecord
  belongs_to :stage
  belongs_to :band

  has_many :scheduleappointments
  has_many :schedules, through: :scheduleappointments

  validate :validate_time, on: :create

  def validate_time
    # binding.pry
    #selects all apppointments with the same day as the appointment we are testing with the associated stage
    appointments = self.stage.appointments.select do |a|
      a.start.strftime("%A") == self.start.strftime("%A")
    end

    if appointments.count > 0
      appointments.each do |appt|
        if self != appt
          if appt.start <= self.start && self.start <= appt.end ||
                           self.start <= appt.start && appt.start <= self.end

            self.errors.add(:start, "not available")
          end
        end
      end
    else
      true
    end
  end
end
