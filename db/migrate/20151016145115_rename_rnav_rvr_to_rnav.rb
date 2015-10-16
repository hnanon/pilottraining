class RenameRnavRvrToRnav < ActiveRecord::Migration
  def change
    rename_column :training_records, :rnav_rvr_instructor, :rnav_instructor
    rename_column :training_records, :rnav_rvr_instructor_id, :rnav_instructor_id
  end
end
