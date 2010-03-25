desc "The task that cruisecontrol.rb runs"
task :cruise do
  ENV['keep_browser_open_on_failure'] = "false"
  rake "db:setup"
  rake "db:create RAILS_ENV=test"
  rake ""
  # run "cap local deploy:setup deploy -S head=true" unless ENV['DISABLE_CI_DEPLOY'] # FIXME
  rake "auto_tagger:create_ci_tag"
end
