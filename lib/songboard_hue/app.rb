require 'sinatra/base'
require 'dotenv'

Dotenv.load

class SongboardHue::App < Sinatra::Base
  configure do
    set :hue, SongboardHue::Hue.new(username = ENV['HUE_USERNAME'], bridge_id = ENV['HUE_BRIDGE_ID'])
  end

  get '/' do
    settings.hue.on
    sleep 1
    settings.hue.off
  end
end
