require 'strscan'
require_relative './checks.rb'

class Scanner
  attr_reader :content

  include Checks

  def initialize(content)
    @content = content
  end

  def error_scan
    content.each_with_index do |line_string, line_index|
      indent?(line_string, line_index)
      space_before_colon?(line_string, line_index)
      space_after_colon?(line_string, line_index)
      space_before_semicolon?(line_string, line_index)
      end_semicolon?(line_string, line_index)
      white_trailing_space?(line_string, line_index)
      # closing_bracket?(line_string, line_index)
    end
  end
end
