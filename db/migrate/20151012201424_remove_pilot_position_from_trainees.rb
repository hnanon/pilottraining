class RemovePilotPositionFromTrainees < ActiveRecord::Migration
  def change
    remove_column :trainees, :pilot_position, :string
  end
end
