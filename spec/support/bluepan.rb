require 'bluepan/factories'

Bluepan.configure do |c|
  c.api_token = ENV["API_TOKEN"]
  c.api_secret = ENV["API_SECRET"]
end
