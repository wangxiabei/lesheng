source 'https://gems.ruby-china.org/'

gem 'rails'
gem 'mysql2'
gem 'unicorn'
gem 'sass-rails'
gem 'uglifier'
gem 'coffee-rails'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder'
gem 'jquery-ui-rails'
gem 'font-awesome-sass'
gem 'anjlab-bootstrap-rails', '2.3.1.2', :require => 'bootstrap-rails'
gem 'animate-rails'
gem 'sprockets-rails'
gem 'momentjs-rails', '>= 2.9.0'
gem 'bootstrap3-datetimepicker-rails', '~> 4.17.42'


# 辅助工具
gem 'will_paginate'
gem 'will_paginate-bootstrap', github: 'anthonykarapetrides/will_paginate-bootstrap'

# API
gem 'grape'
gem 'grape-entity'
gem 'grape-swagger'
gem 'grape-swagger-rails'
gem 'grape-swagger-entity'
gem 'grape-swagger-representable'
gem 'grape_logging'
gem 'rack-ssl-enforcer'
gem 'kramdown'

# 权限验证
gem 'devise'
gem "devise-async"
gem "cancan"
gem "rolify"

# 富文本编辑器
gem 'rails_kindeditor'

gem 'settingslogic'

gem "typhoeus"





group :development, :test do
  gem 'capistrano','3.6.1'#, group: :development
  gem 'capistrano-rbenv'
  gem 'capistrano-bundler'
  gem 'capistrano-rails'
  gem 'capistrano3-unicorn'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'pry-remote'
  gem 'pry-nav'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'rubocop', require: false
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
