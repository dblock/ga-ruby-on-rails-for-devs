# frozen_string_literal: true

require 'spec_helper'

describe Gadget do
  describe 'associations' do
    it { should belong_to :widget }
    it { should have_many :controls }

    context 'hard way' do
      let(:gadget) { Fabricate(:gadget_with_controls) }
      it '#controls' do
        gadget.controls.first.should be_a(Control)
      end
    end
  end

  describe 'validations' do
    it { should validate_presence_of :type }

    context 'verbose and still incomplete way' do
      it 'should validate the presence of type' do
        expect do
          Gadget.create!
        end.to raise_error

        expect do
          Gadget.create(type: Gadget::TYPES.sample)
        end.to change { Gadget.count }.by(1)
      end
    end
  end
end
