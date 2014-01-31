# Jacky

Gem with common code from my rails apps

## Installation

Add this line to your application's Gemfile:

    gem 'jacky'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install jacky

## Usage

Jacky will create a yaml file to store your normal configuration data in config/config.yml and your private passwords access codes from config/keys.yml
Access your settings like below

~~~ruby
  Jacky.config.some_property_name   #comes from config/config.yml
  Jacky.keys.some_api_key           #comes from config/keys.yml
  Jacky::Git.version                #gives you a version flag like '2014.01.31.d21032c'
~~~

## Contributing

1. Fork it ( http://github.com/minhajuddin/jacky/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
