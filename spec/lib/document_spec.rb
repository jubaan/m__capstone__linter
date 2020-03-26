require 'spec_helper'
require_relative '../../lib/document.rb'

RSpec.describe Document do
  let(:path) { Document.new('style.css') }

  describe '#initialize' do
    it 'sets the path or name of the file we want to check' do
      expect(path.path).to eq('style.css')
    end
  end

  describe '.read_document' do
    it 'Open and reads the content of the file returning an array' do
      expect(path.read_document.class).to eq(Array)
    end
  end
end
