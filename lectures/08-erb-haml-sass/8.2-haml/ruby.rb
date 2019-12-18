require 'haml'

s = '
%ul
  -(1..5).each do |i|
    %li= i
'

e = Haml::Engine.new s
puts e.render
