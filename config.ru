$:.unshift File.expand_path("../lib", __FILE__)
require 'songboard_hue'

run SongboardHue::App
