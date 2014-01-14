require "photograph/service/version"

require 'sinatra/base'
require 'sinatra/json'
require 'photograph'

module Photograph
  module Service
    class App < ::Sinatra::Base
      helpers Sinatra::JSON

      # Reuse the same browser instance between requests.
      def browser
        @browser ||= Artist.create_browser
      end

      get '/' do
        json :version => Photograph::Service::VERSION
      end

      get '/shoot' do
        artist = Artist.new :url => params["url"],
          :x   => params["x"].to_i,
          :y   => params["y"].to_i,
          :w   => params["w"].to_i,
          :h   => params["h"].to_i,
          :sleep => (params["sleep"] || params["wait"]).to_f,
          :selector => params["selector"],
          :browser => browser

        artist.shoot! do |image|
          send_file image.path,
            :type => :png
        end
      end
    end
  end
end

