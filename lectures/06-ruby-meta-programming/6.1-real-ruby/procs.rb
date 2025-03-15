# frozen_string_literal: true

f = proc { p @thing }
f.call # nil

l = -> { p @thing }
l.call # nil

@thing = 42

f.call # 42
l.call # 42

# parameter checking is different

f = proc { |t| p t }
f.call 1, 2 # 1

l = ->(t) { p t }
# l.call 1, 2 # ArgumentError
