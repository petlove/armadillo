# Armadillo

Environments manager

[![Tests](https://github.com/petlove/armadillo/actions/workflows/tests.yml/badge.svg)](https://github.com/petlove/armadillo/actions/workflows/tests.yml)

## Table of Contents
- [Getting started](#getting-started)
  - [Installation](#installation)
- [Environment Mark](#environment-mark)
- [Contributing](#contributing)
- [License](#license)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'armadillo', github: 'petlove/armadillo'
```

## Envinronment Mark

![image](mark.png)

Run this code bellow to set settings in `config/environment.rb`:

```
rails generate armadillo:install
```

These are the available settings:

```ruby
Armadillo.configure do |config|
  config.rails_config = Rails.application.config
  config.position = :right
  config.envs = [
    { name: :production, condition: Rails.env.production? && ENV['APP_ENV'] == 'production', show: false },
    { name: :staging, condition: Rails.env.production? && ENV['APP_ENV'] == 'staging', show: true },
    { name: :development, condition: Rails.env.production? && ENV['APP_ENV'] == 'development', show: true },
    { name: :local, condition: Rails.env.development? && ENV['APP_ENV'] == 'local', show: true },
    { name: :test, condition: ENV['APP_ENV'].match?(/test|codefresh|cf/), show: false }
  ]
end
```

## Contributing

1. Fork it
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create new Pull Request

## License

The gem is available as open source under the terms of the [MIT License][mit_license_page].

[mit_license_page]: https://opensource.org/licenses/MIT
