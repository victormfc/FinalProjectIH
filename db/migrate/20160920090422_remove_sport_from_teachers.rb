class RemoveSportFromTeachers < ActiveRecord::Migration[5.0]
  def change
  	remove_column :teachers, :sport
  end
end
