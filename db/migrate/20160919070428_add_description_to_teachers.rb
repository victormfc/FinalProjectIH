class AddDescriptionToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_column :teachers, :description, :string
  end
end
