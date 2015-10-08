class CockpitProceduresTraining < ActiveRecord::Base
  belongs_to :trainee
  belongs_to :user
  belongs_to :training_record
end
