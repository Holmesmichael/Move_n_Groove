json.extract! workout, :id, :user_id, :duration, :notes, :activity_id, :created_at, :updated_at
json.url workout_url(workout, format: :json)
