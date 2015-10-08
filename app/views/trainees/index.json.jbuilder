json.array!(@trainees) do |trainee|
  json.extract! trainee, :id, :first_name, :last_name, :identification, :pilot_position
  json.url trainee_url(trainee, format: :json)
end
