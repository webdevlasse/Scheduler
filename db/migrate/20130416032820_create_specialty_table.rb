class CreateSpecialtyTable < ActiveRecord::Migration
  def up
    create_table :specialties do |t|
      t.integer :appointment_type_id, :foreign_key => :appointment_type_id
      t.string :description

      t.timestamps
    end
  end

  def down
    drop_table :specialties
  end
end
