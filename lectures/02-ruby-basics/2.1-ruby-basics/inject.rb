# frozen_string_literal: true

puts [1, 2, 3, 4].inject(0) { |rc, i| rc + i } # => 10
