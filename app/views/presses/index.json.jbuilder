json.array!(@presses) do |press|
  json.extract! press, :id, :name, :netsite
  json.url press_url(press, format: :json)
end
