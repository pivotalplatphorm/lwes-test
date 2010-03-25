class Rails::Boot
  def run
    load_initializer
    extend_environment
    Rails::Initializer.run(:set_load_path)
  end

  def extend_environment
    Rails::Initializer.class_eval do
      old_load = instance_method(:load_environment)
      define_method(:load_environment) do
        Bundler.require :default, Rails.env
        old_load.bind(self).call
      end
    end
  end
end
  
begin
  # Require the preresolved locked set of gems.
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  # Fallback on doing the resolve at runtime.
  require "rubygems"
  require "bundler"
  if Gem::Version.new(Bundler::VERSION) >= Gem::Version.new("0.9.7")
    Bundler.setup
  else
    raise RuntimeError, "Bundler incompatible.
" +
      "Your bundler version is incompatible with Rails 2.3 and an unlocked bundle.
" +
      "Run `gem install bundler` to upgrade or `bundle lock` to lock."
  end  
end
