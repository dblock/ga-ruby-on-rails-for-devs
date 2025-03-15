# frozen_string_literal: true

begin
  raise 'error!'
rescue Exception => e
  puts e.inspect # #<RuntimeError: error!>
end

begin
  raise StandardError, 'error!'
rescue Exception => e
  puts e.inspect # #<Exception: error!>
end

begin
  raise 'error!'
rescue Exception => e
  puts e.inspect # #<RuntimeError: error!>
end

class BadError < RuntimeError
end

count = 1
begin
  raise BadError, 'error!' if count <= 2
rescue Exception => e
  count += 1
  puts e.inspect # #<BadError: error!> (twice)
  retry
end
