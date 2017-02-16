json.array!(@reviews) do |review|
  json.extract! review, :id, :congress_person_id, :bill_id, :rating, :reviewed
  json.url review_url(review, format: :json)
end
