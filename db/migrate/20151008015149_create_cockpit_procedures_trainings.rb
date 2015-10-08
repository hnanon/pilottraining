class CreateCockpitProceduresTrainings < ActiveRecord::Migration
  def change
    create_table :cockpit_procedures_trainings do |t|
      t.date :date_completed
      t.references :trainee, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true
      t.references :training_record, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
