# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.8' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')

Dir[RAILS_ROOT + "/ext/**/*.rb"].each{|file|
  require file
}

# ENV['JAVA_HOME'] = "/usr/lib/jvm/java-6-sun-1.6.0.06"
# ENV['PATH'] = "/usr/lib/jvm/java-6-sun-1.6.0.06/bin"
# ENV['CLASSPATH'] = "/usr/lib/jvm/java-6-sun-1.6.0.06/lib/dt.jar:/usr/lib/jvm/java-6-sun-1.6.0.06/lib/tools.jar"
# # ENV['LD_LIBRARY_PATH'] = "/usr/lib/jvm/java-6-sun-1.6.0.06/jre/lib/amd64"

require 'rubygems'
Rails::Initializer.run do |config|
  config.active_record.observers = :user_observer

  # Settings in config/environments/* take precedence over those specified here.
  # Application configuration should go into files in config/initializers
  # -- all .rb files in that directory are automatically loaded.

  # Add additional load paths for your own custom dirs
  # config.autoload_paths += %W( #{RAILS_ROOT}/extras )

  # Specify gems that this application depends on and have them installed with rake gems:install
  # config.gem "bj"
  # config.gem "hpricot", :version => '0.6', :source => "http://code.whytheluckystiff.net"
  # config.gem "sqlite3-ruby", :lib => "sqlite3"
  # config.gem "aws-s3", :lib => "aws/s3"

  # Only load the plugins named here, in the order given (default is alphabetical).
  # :all can be used as a placeholder for all plugins not explicitly named
  # config.plugins = [ :exception_notification, :ssl_requirement, :all ]

  # Skip frameworks you're not going to use. To use Rails without a database,
  # you must remove the Active Record framework.
  # config.frameworks -= [ :active_record, :active_resource, :action_mailer ]

  # Activate observers that should always be running
  # config.active_record.observers = :cacher, :garbage_collector, :forum_observer

  # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
  # Run "rake -D time" for a list of tasks for finding time zone names.
  config.time_zone = 'UTC'
  config.gem "calendar_date_select"
  # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
  # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}')]
  # config.i18n.default_locale = :de
end

require 'smtp_tls.rb'  
  ActionMailer::Base.delivery_method = :smtp

  # these options are only needed if you choose smtp delivery
  ActionMailer::Base.sendmail_settings = {
    :location => '/usr/sbin/sendmail',
    :arguments => '-i -t'
  }
  ActionMailer::Base.smtp_settings = {
  :address        => 'localhost',
  :port           => 25,
  :domain         => 'goodchinese.com',
  }
  $webmaster = "goodchinese.com@gmail.com"
  $contact_us_email = "zhaopin_bizsim_cn@163.com"
  ActionMailer::Base.perform_deliveries = true
  ActionMailer::Base.raise_delivery_errors = true
  ActionMailer::Base.default_content_type = "text/html"