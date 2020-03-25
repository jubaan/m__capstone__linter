require 'spec_helper'
require_relative '../../lib/scanner.rb'

content = ['one line', 'two line', 'three line']
class Scanner
  def error_scan
    content.each_with_index do |str, _idx|
      str
    end
  end
end
RSpec.describe Scanner do
  let(:scanner) { Scanner.new(content) }

  describe '#initialize' do
    it 'retrieves the content of the document' do
      expect(scanner.content.class).to eq(Array)
    end
  end

  describe '.error_scan' do
    it 'returns an array to run the checks' do
      expect(scanner.error_scan).to eq(['one line', 'two line', 'three line'])
    end
  end
end
