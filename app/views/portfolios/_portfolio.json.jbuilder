json.extract! portfolio, :id, :title, :body, :image_data, :created_at, :updated_at
json.url portfolio_url(portfolio, format: :json)
