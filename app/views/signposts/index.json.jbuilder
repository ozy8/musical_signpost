json.array!(@signposts) do |signpost|
  json.extract! signpost, :id
  json.url signpost_url(signpost, format: :json)
end
