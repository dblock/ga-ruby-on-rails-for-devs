# frozen_string_literal: true

require 'spec_helper'

describe Post do
  describe 'associations' do
    it { should belong_to :user }
  end
  describe 'validations' do
    it { should validate_presence_of :content }
    it { should validate_presence_of :title }
    it { should validate_presence_of :user_id }
  end
end
