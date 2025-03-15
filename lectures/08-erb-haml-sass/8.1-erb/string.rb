# frozen_string_literal: true

require 'erb'

s = 'Ruby String'
e = ERB.new '<%= s %>'

puts e.result # "Ruby String"
