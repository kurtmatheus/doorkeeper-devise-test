Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3000'
      resource '/api/v1/*', 
      headers: [:authorization, :content-type], 
      methods: [:get, :post, :options]
    end
  end