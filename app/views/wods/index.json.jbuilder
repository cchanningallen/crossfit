json.array!(@wods) do |wod|
  json.extract! wod, :name, :wod_type, :score, :score_type, :rx, :notes
  json.url wod_url(wod, format: :json)
end
