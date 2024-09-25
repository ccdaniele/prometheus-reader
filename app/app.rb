require 'sinatra'

# Define the file path for the metrics
METRICS_FILE_PATH = "./prometheus.txt"

# Define the /metrics endpoint to expose Prometheus metrics from the file
get '/metrics' do
  content_type 'text/plain'

  # Read the content of the metrics.txt file on each request
  if File.exist?(METRICS_FILE_PATH)
    File.read(METRICS_FILE_PATH)
  else
    status 404
    "Metrics file not found!"
  end
end

# Keep the Sinatra app running on port 15090
set :bind, '0.0.0.0'
set :port, 15090
