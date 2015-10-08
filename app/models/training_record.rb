class TrainingRecord < ActiveRecord::Base
  belongs_to :trainee
  has_many :users
  has_one :cockpit_procedures_training
end
