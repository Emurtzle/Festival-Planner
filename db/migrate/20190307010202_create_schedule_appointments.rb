class CreateScheduleAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :schedule_appointments do |t|
      t.belongs_to :appointment, foreign_key: true
      t.belongs_to :schedule, foreign_key: true
    end
  end
end
