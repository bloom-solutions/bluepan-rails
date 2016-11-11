require 'vcr'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :webmock
  c.configure_rspec_metadata!
  %w[API_TOKEN API_SECRET].each do |attr|
    c.filter_sensitive_data("<#{attr}>") { ENV[attr] }
  end
end
