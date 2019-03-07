class Schedule < ApplicationRecord
  has_many :schedule_appointments
  has_many :appointments, through: :schedule_appointments
  has_many :bands, through: :appointments

  belongs_to :festival
  belongs_to :user

  def ordered_appointments
    self.appointments.sort_by(&:start)
  end

  def validate_time
    # binding.pry
    arr = []
    i=0
    if ordered_appointments.count <= 1
      return true
    else
      ordered_appointments.count-1.times do
        # binding.pry
        if ordered_appointments[i+1].start < ordered_appointments[i].end
          arr << "x"
        end
        i += 1
      end
      arr.empty? ? true : false
    end
  end
end
