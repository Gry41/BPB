json.extract! taxi, :id, :driver_name, :places, :created_at, :updated_at
json.url taxi_url(taxi, format: :json)
