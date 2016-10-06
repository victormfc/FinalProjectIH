class AddSportToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_reference :teachers, :sport, foreign_key: true
  end
end
