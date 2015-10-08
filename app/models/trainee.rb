class Trainee < ActiveRecord::Base
  has_many :training_records
  has_many :cockpit_procedures_trainings
  
  def trainee_full_name
    "#{ self.first_name } #{ self.last_name }"
  end    
end
