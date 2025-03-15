# Implement a subclass of `Hash` called `Mash` that allows reading and writing values without having to use `h[key]`.

#     ```ruby
#     m = Mash.new(name: 'Daniel')
#     m.name # => "Daniel"
#     m.role # => nil
#     m.role = 'Instructor'
#     m.role # => "Instructor"
#     ```

class Mash < Hash
  def initialize(hash = {})
    super(nil) # note that Hash takes a default value as parameter, not an initial value

    hash.each_pair do |key, value|
      self[key.to_s] = value
    end
  end

  def method_missing(name, *args, &block)
    if name.to_s.end_with?('=')
      self[name.to_s.chomp('=')] = args.first
    else
      self[name.to_s]
    end
  end

  def respond_to_missing?(name, include_private = false)
    name.to_s.end_with?('=') ? true : super
  end
end

m = Mash.new(name: 'Daniel')
puts m.name # => "Daniel"
puts m.role # => nil
m.role = 'Instructor'
puts m.role # => "Instructor"