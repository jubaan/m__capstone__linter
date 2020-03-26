require 'strscan'
require_relative './checks.rb'

class Scanner
  attr_reader :content

  include Checks

  def initialize(content)
    @content = content
  end

  def error_scan
    content.each_with_index do |str, idx|
      (Thread.current[:errors] ||= []) << indent?(str, idx)
      (Thread.current[:errors] ||= []) << space_before_colon?(str, idx)
      (Thread.current[:errors] ||= []) << space_after_colon?(str, idx)
      (Thread.current[:errors] ||= []) << space_before_semicolon?(str, idx)
      (Thread.current[:errors] ||= []) << end_semicolon?(str, idx)
      (Thread.current[:errors] ||= []) << white_trailing_space?(str, idx)
      (Thread.current[:errors] ||= []) << space_before_open_bracket?(str, idx)
    end
  end
end
