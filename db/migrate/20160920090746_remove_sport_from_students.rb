class RemoveSportFromStudents < ActiveRecord::Migration[5.0]
  def change
  	remove_column :students, :sport
  end
end
