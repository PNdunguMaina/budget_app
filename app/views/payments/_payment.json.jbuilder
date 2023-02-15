json.extract! payment, :id, :created_at, :updated_at
json.url group_payment_url(payment, format: :json)
