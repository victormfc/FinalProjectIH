class AddConfirmationToAppointments < ActiveRecord::Migration[5.0]
  def change
    add_column :appointments, :confirmation, :boolean, :default => false
  end
end
