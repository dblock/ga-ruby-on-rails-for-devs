# frozen_string_literal: true

require 'spec_helper'

describe Desktop do
  describe 'associations' do
    it { should have_many(:widgets) }
  end
end
