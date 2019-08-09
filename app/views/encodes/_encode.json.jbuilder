json.extract! encode, :id, :plain_message, :generated_key, :created_at, :updated_at
json.url encode_url(encode, format: :json)
