# Implement a subclass of `Hash` called `Mash` that allows reading and writing values without having to use `h[key]`.
#
#     m = Mash.new(name: 'Daniel')
#     m.name # => "Daniel"
#     m.role # => nil
#     m.role = 'Instructor'
#     m.role # => "Instructor"
#
