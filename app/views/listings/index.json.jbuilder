json.array!(@listings) do |listing|
  json.extract! listing, :id, :title, :time, :date, :seats, :venue_name, :location, :other_info, :projector, :cables, :laptops, :seating, :blinds, :lighting, :camcorder, :catering, :toilets, :fire, :internet
  json.url listing_url(listing, format: :json)
end
