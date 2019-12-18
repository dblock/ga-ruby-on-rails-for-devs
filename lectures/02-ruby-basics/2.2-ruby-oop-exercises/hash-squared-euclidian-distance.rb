#
# Add a `squared_euclidean_distance` method to the `Hash` class that takes another `Hash` as a parameter and calculates the euclidean distance with another Hash. For example, a Euclidean distance between `{ :x => 1, :y => 2 }` and `{ :x => 3, :y => 4 }` is `(1 - 3)^2 + (2 - 4)^2`.
#
#     {}.squared_euclidean_distance({}) # 0
#     { :x => 1, :y => 2 }.squared_euclidean_distance({ :z => 3 }) # 14
#     { :x => 2, :y => 3 }.squared_euclidean_distance({ :y => 4, :z => 5 }) # 30
#     { :x => 2, :y => 3 }.squared_euclidean_distance({ :y => 4, :x => 5 }) # 10
#     { :x => 10, :y => 20 }.squared_euclidean_distance({}) # 500
#     {}.squared_euclidean_distance({ :x => 10, :y => 20 }) # 500
#

class Hash
  def self.squared_euclidean_distance(lhs, rhs)
    # TODO
  end

  def squared_euclidean_distance(rhs)
    Hash.squared_euclidean_distance(self, rhs)
  end
end

unless { x: 1, y: 2 }.squared_euclidean_distance(z: 3) == 14
  raise 'invalid distance between two different hashes'
end
unless {}.squared_euclidean_distance({}) == 0
  raise 'invalid distance between empty hashes'
end
unless { x: 2, y: 3 }.squared_euclidean_distance(y: 4, x: 5) == 10
  raise 'invalid distance between two overlapping hashes'
end
unless { x: 2, y: 3 }.squared_euclidean_distance(y: 4, z: 5) == 30
  raise 'invalid distance between two partially overlapping hashes'
end
unless { a: 2, b: 3 }.squared_euclidean_distance(b: 4, c: 5) == 30
  raise 'invalid distance between two partially overlapping hashes with keys other than :x, :y and :z'
end
unless { x: 10, y: 20 }.squared_euclidean_distance({}) == 500
  raise 'invalid distance between a hash and an empty hash'
end
unless {}.squared_euclidean_distance(x: 10, y: 20) == 500
  raise 'invalid distance between an empty hash and a hash'
end

puts 'correct results in squared_euclidean_distance'
