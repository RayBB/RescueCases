json.array!(@missions) do |mission|
  json.extract! mission, :id, :game, :location, :level, :rescue_link, :rescued_link, :notes, :finished
  json.url mission_url(mission, format: :json)
end
