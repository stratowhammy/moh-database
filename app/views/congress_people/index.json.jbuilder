json.array!(@congress_people) do |congress_person|
  json.extract! congress_person, :id, :first_name, :last_name, :branch, :notes, :district_phone, :capitol_phone, :district, :party
  json.url congress_person_url(congress_person, format: :json)
end
