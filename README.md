# Photograph-service

photograph-service is a minimalist sinatra based web service that allows you to take screenhots of web pages. Most of the code lives in [Photograph](https://github.com/jhchabran/photograph) whereas photograph-service is just the sinatra part that had been extracted.

## Installation

Add this line to your application's Gemfile:

    gem 'photograph-service'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install photograph-service

## Usage

# Photograph::Service
A small Sinatra application is provided. You can launch it with:

    $ bundle exec photograph -h 127.0.0.1 -p 4567

Then it can be used as following:

    GET http://127.0.0.1:4567/shoot?url=rubygems.org

It also supports [cropping, waiting for a dom selector to match](https://github.com/jhchabran/photograph/blob/master/lib/photograph/service.rb).

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
