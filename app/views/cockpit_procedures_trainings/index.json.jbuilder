json.array!(@cockpit_procedures_trainings) do |cockpit_procedures_training|
  json.extract! cockpit_procedures_training, :id, :date_completed, :trainee_id, :user_id, :training_record_id
  json.url cockpit_procedures_training_url(cockpit_procedures_training, format: :json)
end
