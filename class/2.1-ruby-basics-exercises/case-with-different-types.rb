#
#  Implement a `case` statement that displays whether an element of the following array is an odd number, even number or a letter: [ 1, 7, 'A', 2, 'Z' ]
#
#     1: odd number
#     7: odd number
#     A: letter
#     2: even number
#     Z: letter
#

[1, 7, 'A', 2, 'Z'].each do |i|
  if i.is_a?(String) then puts "#{i}: letter"
  elsif i.even? then puts "#{i}: even number"
  elsif i.odd? then puts "#{i}: odd number"
  end
end
