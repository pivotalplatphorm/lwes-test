# All of the files below are in vendor/plugins/pivotal_core_bundle/lib.  Pick and choose the ones useful to your project.
require "pivotal/version_checker"
require "rails_core_extensions/additional_migration_methods"
require "rails_core_extensions/multipart_mailer_mixin"
require "thoughtworks/command_line"
require "thoughtworks/platform"

PivotalCore::Initializer.run do |config|

  # *** Default URL Options For Mailers ***
  # Use this line to automatically derive protocol/host/port using incoming rails request:
  config.action_controller.default_url_options_for_mailers = :infer_url_options

  # Use this line to explicitly set protocol/host/port:
  # config.action_controller.default_url_options_for_mailers = { :protocol => "http", :host => "example.com", :port => 3333 }

  # Comment out both lines to disable any default URL option functionality for mailers.

  # NOTE: ActionMailer::Base.default_url_options always takes precedence over this facility and if *any* options are
  # set there, default_url_options_for_mailers does nothing.

  # *** Detailed validates_associated error messages ***

  config.active_record.detailed_validates_associated_error_messages = true

  # If this option is set the error messages collection for an invalid object will include the error messages for the
  # associated objects, rather than the generic "<associated object> is invalid."  As an example, consider a User model
  # which has an associated EmailAddress, and validates_associated that association.  Should the associated EmailAddress
  # fail validation, with this configuration option set the error message in the User's error messages collection will
  # reflect the failure on the associated model (e.g. "Email address format is invalid").  With this configuration
  # option unset the error message in the User's error messages collection will be generic ("Email address is invalid").

  # If the validates_associated declaration specifies an explicit message that message will override this functionality
  # regardless of how the configuration option is set.

  # If not specified, this configuration option will default to unset.

  # NOTE: This will have no effect on collection associations (e.g. has_many).  Error messages for validates_associated
  # on collection associations will always exhibit the default Rails behavior.
end
