# frozen_string_literal: true

class WidgetsController < ApplicationController
  def index
    @widgets = Widget.all
  end
end
