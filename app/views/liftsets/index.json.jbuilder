json.array!(@liftsets) do |liftset|
  json.extract! liftset, :setnum, :weight, :reps, :lift_id
  json.url liftset_url(liftset, format: :json)
end
