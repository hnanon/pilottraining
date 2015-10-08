class CreateTrainees < ActiveRecord::Migration
  def change
    create_table :trainees do |t|
      t.string :first_name
      t.string :last_name
      t.string :identification
      t.string :pilot_position
      t.integer :status

      t.timestamps null: false
    end
  end
end
