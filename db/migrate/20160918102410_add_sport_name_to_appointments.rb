class AddSportNameToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_reference :appointments, :sport, foreign_key: true
  end
end
