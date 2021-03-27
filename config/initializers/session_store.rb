Rails.application.config.session_store :redis_store,
:servers => { :host => ENV['REDIS_HOST'], :port => ENV['REDIS_PORT'] },
:key_prefix => "MyApp:rails:session",
:expire_in => 30.minutes