require "pivotal_rails_test/common_test_helper"
require "rspec_extensions/spec_helper_matchers"

Spec::Runner.configure do |configuration|
  configuration.include CommonTestHelper
end
