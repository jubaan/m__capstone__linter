require_relative './errors.rb'

module Checks
  include SyntaxErrors

  def white_trailing_space?(line_string, line_index)
    raise TrailingSpaceError.new(line_string, line_index) if line_string.match?(/( \n)$/)
  rescue TrailingSpaceError => e
    puts e.message
  end

  def space_after_colon?(line_string, line_index)
    raise NoSpaceAfterCError.new(line_string, line_index) if line_string.match?(/(:\w+)/)
  rescue NoSpaceAfterCError => e
    puts e.message
  end

  def space_before_colon?(line_string, line_index)
    raise SpaceBeforeCError.new(line_string, line_index) if line_string.match?(/( :)/)
  rescue SpaceBeforeCError => e
    puts e.message
  end

  def indent?(line_string, line_index)
    raise NoIndentError.new(line_string, line_index) if line_string.match?(/^\w+\s*:\s*;*/)
  rescue NoIndentError => e
    puts e.message
  end

  def end_semicolon?(line_string, line_index)
    raise NoSemiColonError.new(line_string, line_index) if line_string.match?(/(\w+\s*\n)$/)
  rescue NoSemiColonError => e
    puts e.message
  end

  def space_before_semicolon?(line_string, line_index)
    raise SpaceBeforeSCError.new(line_string, line_index) if line_string.match?(/( ;)/)
  rescue SpaceBeforeSCError => e
    puts e.message
  end
end
