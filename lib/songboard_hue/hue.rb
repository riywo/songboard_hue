require 'hue'

class SongboardHue::Hue
  def initialize(username = nil, bridge_id = nil)
    @client = ENV['HUE_MOCK'].nil? ? ::Hue::Client.new(username = username, bridge_id = bridge_id) : Client.new
    init_lights
  end

  def on
    @client.lights.each do |light|
      light.on = true
    end
  end

  def off
    @client.lights.each do |light|
      light.on = false
    end
  end

  private

  def init_lights
    @client.lights.each do |light|
      light.on         = true
      light.brightness = 255
      light.hue        = 0
      light.saturation = 255

      light.on         = false
    end
  end

  class Client
    attr_reader :lights
    def initialize
      @lights = [Light.new, Light.new, Light.new]
    end
  end

  class Light
    attr_accessor :on, :brightness, :hue, :saturation
  end
end
