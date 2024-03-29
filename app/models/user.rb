class User < ActiveRecord::Base
  authenticates_with_sorcery!

  validates :password, length: { minimum: 8 }
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :email, uniqueness: true, case_sensitive: false
  
  has_many :training_records
  has_many :cockpit_procedures_trainings
end
