class CreateAppointmentTypeTable < ActiveRecord::Migration
  def up
    create_table :appointment_types do |t|
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :appointment_types
  end
end
