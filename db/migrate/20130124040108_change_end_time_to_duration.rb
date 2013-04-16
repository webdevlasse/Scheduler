class ChangeEndTimeToDuration < ActiveRecord::Migration
  def up
    add_column :appointments, :duration, :integer
    remove_column :appointments, :end_time
  end

  def down
    remove_column :appointments, :duration
    add_column :appointments, :end_time, :datetime
  end
end
