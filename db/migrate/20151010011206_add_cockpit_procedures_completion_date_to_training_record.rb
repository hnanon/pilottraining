class AddCockpitProceduresCompletionDateToTrainingRecord < ActiveRecord::Migration
  def change
    add_column :training_records, :cockpit_procedures_completion_date,          :date
    add_column :training_records, :cockpit_procedures_instructor,               :string
    add_column :training_records, :cockpit_procedures_instructor_id,            :string
    add_column :training_records, :flight_training_simulator_completion_date,   :date
    add_column :training_records, :flight_training_simulator_minutes,           :integer
    add_column :training_records, :flight_training_simulator_instructor,        :string
    add_column :training_records, :flight_training_simulator_instructor_id,     :string
    add_column :training_records, :windshear_completion_date,                   :date
    add_column :training_records, :windshear_instructor,                        :string
    add_column :training_records, :windshear_instructor_id,                     :string
    add_column :training_records, :high_minimums_completion_date,               :date
    add_column :training_records, :high_minimums_instructor,                    :string
    add_column :training_records, :high_minimums_instructor_id,                 :string
    add_column :training_records, :_1800_rvr_completion_date,                   :date
    add_column :training_records, :_1800_rvr_instructor,                        :string
    add_column :training_records, :_1800_rvr_instructor_id,                     :string
    add_column :training_records, :rnav_completion_date,                        :date
    add_column :training_records, :rnav_rvr_instructor,                         :string
    add_column :training_records, :rnav_rvr_instructor_id,                      :string
    add_column :training_records, :category_ii_completion_date,                 :date
    add_column :training_records, :category_ii_instructor,                      :string
    add_column :training_records, :category_ii_instructor_id,                   :string
    add_column :training_records, :oral_completion_date,                        :date
    add_column :training_records, :oral_instructor,                             :string
    add_column :training_records, :oral_instructor_id,                          :string
    add_column :training_records, :oral_faa,                                    :string
    add_column :training_records, :proficiency_check_simulator_completion_date, :date
    add_column :training_records, :proficiency_check_simulator_landings,        :string
    add_column :training_records, :proficiency_check_simulator_instructor,      :string
    add_column :training_records, :proficiency_check_simulator_instructor_id,   :string
    add_column :training_records, :proficiency_check_simulator_faa,             :string
    add_column :training_records, :loft_completion_date,                        :date
    add_column :training_records, :loft_landings       ,                        :string
    add_column :training_records, :loft_instructor,                             :string
    add_column :training_records, :loft_instructor_id,                          :string
  end
end
