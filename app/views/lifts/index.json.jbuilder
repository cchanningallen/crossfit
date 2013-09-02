json.array!(@lifts) do |lift|
  json.extract! lift, :name, :sets, :notes
  json.url lift_url(lift, format: :json)
end
