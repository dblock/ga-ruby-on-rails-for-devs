# frozen_string_literal: true

# Implement an `after` callback that prints the value of the item being added.

module Callbacks
  module ClassMethods
    # TODO
  end

  # TODO
end

class Collection
  extend Callbacks::ClassMethods
  include Callbacks

  def add(item)
    invoke :add do
      @items ||= []
      @items << item
      item
    end
  end
end

class Widget < Collection
  after :add do |item|
    puts "item added: #{item}"
  end
end

w = Widget.new
w.add(1) # item added: 1
w.add(2) # item added: 2
