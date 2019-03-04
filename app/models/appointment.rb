class Appointment < ApplicationRecord
  belongs_to :stage
  belongs_to :band
  belongs_to :schedule
end
