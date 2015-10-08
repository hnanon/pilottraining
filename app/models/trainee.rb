class Trainee < ActiveRecord::Base
  has_many :training_records
  has_many :cockpit_procedures_trainings
end
