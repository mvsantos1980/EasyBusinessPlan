json.extract! payment, :id, :descrition, :installment, :firstPayNow, :created_at, :updated_at
json.url payment_url(payment, format: :json)
