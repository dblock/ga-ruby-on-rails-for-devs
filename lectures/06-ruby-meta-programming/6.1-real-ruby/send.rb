p 'hello world'.send(:upcase) # "HELLO WORLD"
p %w[hello world].map(&:upcase) # ["HELLO", "WORLD"]

class Symbol
  alias old_to_proc to_proc
  def to_proc
    puts "to_proc for symbol `#{self}`"
    old_to_proc
  end
end

p %w[hello world].map(&:upcase) # to_proc for symbol `upcase`, ["HELLO", "WORLD"]
