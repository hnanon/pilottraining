json.array!(@training_records) do |training_record|
  json.extract! training_record, :id, :type_of_training, :trainee_id
  json.url training_record_url(training_record, format: :json)
end
