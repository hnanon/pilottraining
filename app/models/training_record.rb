class TrainingRecord < ActiveRecord::Base
  include ActiveModel::Dirty

  belongs_to :trainee
  has_many :users
  has_one :cockpit_procedures_training
  
  enum status: { incomplete: 0, complete: 1 }
  
  TRAINING_CLASSIFICATIONS = ["New Hire", "Upgrade"]
  
  TRAINING_TYPES = ["Cockpit Procedures", "Flight Training Simulator", "Windshear",
                   "High Minimums", "1800 RVR", "RNAV", "Category II", "Oral",
                   "Proficiency Check Simulator", "LOFT"]
                   
  PREFLIGHT_TRAINING_TYPES = ["Preflight Checks / Visual Inspection", "Taxiing", "Pre-Takeoff Checks"]
  
  TRAINING_TYPE_DAYS = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]
  
  TRAINING_TYPE_GRADES = ["1", "2", "3", "4", "5"]
                   
  def trainee_full_name
    "#{ self.trainee.first_name } #{ self.trainee.last_name }"
  end
  
  def set_status
    self.status = 0
  end
  
  def update_instructor(current_user, params)
    #foo.changed_attributes.keys.each do |attribute|
      #username_attribute = "#{attribute}_user="
      #foo.send(username_attribute, current_user.name) if foo.respond_to?(username_attribute)
    #end
    
    instructor_full_name = "#{ current_user.first_name } #{ current_user.last_name }"

    if self.changed_attributes.has_key?("cockpit_procedures_completion_date")
      self.cockpit_procedures_instructor = instructor_full_name
      self.cockpit_procedures_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("flight_training_simulator_completion_date")
      self.flight_training_simulator_instructor = instructor_full_name
      self.flight_training_simulator_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("windshear_completion_date")
      self.windshear_instructor = instructor_full_name
      self.windshear_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("high_minimums_completion_date")
      self.high_minimums_instructor = instructor_full_name
      self.high_minimums_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("_1800_rvr_completion_date")
      self._1800_rvr_instructor = instructor_full_name
      self._1800_rvr_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("rnav_completion_date")
      self.rnav_instructor = instructor_full_name
      self.rnav_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("category_ii_completion_date")
      self.category_ii_instructor = instructor_full_name
      self.category_ii_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("oral_completion_date")
      self.oral_instructor = instructor_full_name
      self.oral_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("proficiency_check_simulator_completion_date")
      self.proficiency_check_simulator_instructor = instructor_full_name
      self.proficiency_check_simulator_instructor_id = current_user.instructor_id
    elsif self.changed_attributes.has_key?("loft_completion_date")
      self.loft_instructor = instructor_full_name
      self.loft_instructor_id = current_user.instructor_id
    end
    
    if !self.attributes.all?(&:blank?)
      self.status = 1
      save!
    end

    save!
  end
  
end
