class RenameColumnTypeOfTrainingToTrainingClassification < ActiveRecord::Migration
  def change
    rename_column :training_records, :type_of_training, :training_classification
  end
end
