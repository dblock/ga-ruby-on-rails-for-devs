# frozen_string_literal: true

require 'rubygems'
require 'rack'

class WebServer
  def call(_env)
    # TODO: replace this with an implementation
    [200, { 'Content-Type' => 'text/html' }, ['Hello Rack!']]
  end
end

Rack::Handler::Thin.run WebServer.new, Port: 9292
