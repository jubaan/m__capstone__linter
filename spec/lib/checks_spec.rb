require 'spec_helper'
require_relative '../../lib/checks.rb'
require_relative '../../lib/errors.rb'

RSpec.describe Checks do
  include Checks
  include SyntaxErrors

  describe '#white_trailing_space' do
    it 'raise an error when line of code has a white trailing space' do
      str = 'hello world! '
      expect(white_trailing_space?(str, 1).class).to eq(String)
    end

    it "Doesn't raise any error nor message" do
      str = 'hello world!'
      expect{white_trailing_space?(str, 1)}.not_to raise_error
    end
  end
end
