#
#  Implement a loop that prints odd numbers under 10.
#
#     1
#     3
#     5
#     7
#     9
#

(1..10).each do |i|
  puts i if i.odd?
end
