json.extract! customer, :id, :last_name, :first_name, :has_good_credit, :paid, :created_at, :updated_at
json.url customer_url(customer, format: :json)
