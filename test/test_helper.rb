require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

class ActiveSupport::TestCase

  # Add more helper methods to be used by all tests here...
  def load_centers
    Rails.application.load_seed
  end
end
