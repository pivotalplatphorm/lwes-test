require File.dirname(__FILE__) + "/../../vendor/plugins/pivotal_core_bundle/lib/no_framework_bootstrap"

#
# The following files are defined in pivotal_core_plugins.  Comment in/out the ones you would like for your project.
#
Rake.application.options.trace = true
load "rake_extensions/run.rake"
load "rake_extensions/db.rake"
