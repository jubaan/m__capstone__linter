require 'strscan'
require_relative './rules.rb'

class Scanner < StringScanner
  attr_reader :content

  include Checks

  def initialize(content)
    @content = content
  end

  def error_scan
    content.each_with_index do |line_string, line_index|
      indent?(line_string, line_index)
      space_before?(line_string, line_index)
      space_after?(line_string, line_index)
      end_semicolon?(line_string, line_index)
      white_trailing_space?(line_string, line_index)
    end
  end
end
