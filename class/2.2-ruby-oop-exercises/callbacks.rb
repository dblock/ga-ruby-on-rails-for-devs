# frozen_string_literal: true

# Implement an `after` callback that prints the value of the item being added.

module Callbacks
  module ClassMethods
    def callbacks
      @callbacks ||= []
    end

    def after(method_name, &block)
      @callbacks ||= []
      @callbacks << { method: method_name, block: block }
    end
  end

  def invoke(method, &block)
    yield(block).tap do |result|
      self.class.callbacks.select { |callback| callback[:method] == method }.each do |callback|
        callback[:block].call(result)
      end
    end
  end
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
    item
  end
end

class Widget < Collection
  after :add do |item|
    puts "item added: #{item}"
  end
end

w = Widget.new
w.add(1) # => item added: 1
w.add(2) # => item added: 2
