# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_t2max_session',
  :secret      => 'bd82250549f5969960c463efd1e5b705e190ecfc77de498c94d09d1bd86a0e3333eb38f14c82abb8e51bb4c5bc9e101b1d2bb4d32e681b62119d75df74aac3a5'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
