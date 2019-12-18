require 'erb'

animals = {
  'cow' => 'moo',
  'cat' => 'meow'
}

t = '

  The animals at the zoo:

  <% animals.each_pair do |animal, sound| %>
    * <%= animal %> says <%= sound %>
  <% end %>
'

puts ERB.new(t).result
