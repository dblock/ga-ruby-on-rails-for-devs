# frozen_string_literal: true

require 'haml'

e = Haml::Engine.new '%p Hello World'

puts e.render # "<p>Hello World</p>"
