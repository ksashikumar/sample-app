# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SampleApp::Application.initialize!
config.middleware.use Rack::Cache,
  verbose:     true,
  metastore:   'file:/var/cache/rack/meta',
  entitystore: 'file:/var/cache/rack/body'
