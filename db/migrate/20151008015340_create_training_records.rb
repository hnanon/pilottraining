class CreateTrainingRecords < ActiveRecord::Migration
  def change
    create_table :training_records do |t|
      t.string :type_of_training
      t.references :trainee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
