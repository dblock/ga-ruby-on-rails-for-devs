# frozen_string_literal: true

require 'erb'

class Hound
  def initialize
    @sound = 'bow wow'
  end

  def public_binding
    binding
  end
end

t = '

  The dog says: <%= @sound %>

'

dog = Hound.new

puts ERB.new(t).result(dog.public_binding)
