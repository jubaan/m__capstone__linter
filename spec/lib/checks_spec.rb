require 'spec_helper'
require_relative '../../lib/checks.rb'
require_relative '../../lib/errors.rb'

RSpec.describe Checks do
  include Checks
  include SyntaxErrors

  describe '#white_trailing_space?' do
    it 'raise an error when line of code has a white trailing space' do
      str = 'selector { '
      expect(white_trailing_space?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = 'selector {'
      expect { white_trailing_space?(str, 1) }.not_to raise_error
    end
  end

  describe '#space_after_colon?' do
    it 'raise an error when there is no space between the colon and the value' do
      str = '  property:value;'
      expect(space_after_colon?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { space_after_colon?(str, 1) }.not_to raise_error
    end
  end

  describe '#space_before_colon?' do
    it 'raise an error when there is and aditional space between the property and the value' do
      str = '  property : value;'
      expect(space_before_colon?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { space_before_colon?(str, 1) }.not_to raise_error
    end
  end

  describe '#indent?' do
    it "raise an error when there is no 'two space' indentation" do
      str = 'property: value;'
      expect(indent?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { indent?(str, 1) }.not_to raise_error
    end
  end

  describe '#end_semicolon?' do
    it 'raise an error if line has no ending semicolon' do
      str = '  property: value'
      expect(end_semicolon?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { end_semicolon?(str, 1) }.not_to raise_error
    end
  end

  describe '#space_before_semicolon?' do
    it 'raise an error if line has no ending semicolon' do
      str = '  property: value ;'
      expect(space_before_semicolon?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { space_before_semicolon?(str, 1) }.not_to raise_error
    end
  end

  describe '#space_before_open_bracket?' do
    it 'raise an error if line has no space between the selector and the opening bracket' do
      str = '  property: value ;'
      expect(space_before_open_bracket?(str, 1).class).to eq(NilClass)
    end

    it "Doesn't raise any error nor message" do
      str = '  property: value;'
      expect { space_before_open_bracket?(str, 1) }.not_to raise_error
    end
  end
end
