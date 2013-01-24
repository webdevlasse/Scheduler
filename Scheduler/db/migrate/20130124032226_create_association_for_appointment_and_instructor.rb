class CreateAssociationForAppointmentAndInstructor < ActiveRecord::Migration
  def up
    add_column :appointments, :instructor_id, :integer
    remove_column :appointments, :instructor
  end

  def down
    remove_column :appointments, :instructor_id
    add_column :appointments, :instructor, :string
  end
end
