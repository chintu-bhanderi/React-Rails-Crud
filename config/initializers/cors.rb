Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'  # You can replace '*' with the specific origin(s) that are allowed to access your API.
                   # example - 'http://localhost:3001'
      resource '*',
        headers: :any,  # any header can allow
        methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  