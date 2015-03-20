json.array!(@schedules) do |schedule|
  json.extract! schedule, :id, :gametime, :hteam, :ateam
  json.url schedule_url(schedule, format: :json)
end
