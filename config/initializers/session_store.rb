# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_lwes-test_session',
  :secret      => '3d938c3567e5085c30d8d6a245a0e4103b115c2d8b21c93346cdc3447eed6767eb8164fa3bd0019e094dd02b594862cd06dddc03b5c3a16f14ce0c2c584e8ab6'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
#ActionController::Base.session_store = :active_record_store
