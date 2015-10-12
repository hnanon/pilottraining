class AddStatusToTrainingRecords < ActiveRecord::Migration
  def change
    add_column :training_records, :status, :integer
  end
end
