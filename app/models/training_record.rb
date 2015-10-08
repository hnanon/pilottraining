class TrainingRecord < ActiveRecord::Base
  belongs_to :trainee
  has_many :users
  has_one :cockpit_procedures_training
  
  def trainee_full_name
    "#{ self.trainee.first_name } #{ self.trainee.last_name }"
  end  
end
