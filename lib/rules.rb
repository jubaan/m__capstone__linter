require_relative './errors.rb'

module Checks

  include SyntaxErrors

  def white_trailing_space?(line_string, line_index)

      raise TrailingSpaceError.new(line_string, line_index) if line_string.match?(/( \n)$/)
  rescue TrailingSpaceError => e
    puts e.message
  end

  def space_after?(line_string, line_index)
    raise NoSpaceAfterError.new(line_string, line_index) if line_string.match?(/(:\w+)/)
  rescue NoSpaceAfterError=> e
    puts e.message
  end

  def space_before?(line_string, line_index)
    raise SpaceBeforeError.new(line_string, line_index) if line_string.match?(/( :)/)
  rescue SpaceBeforeError => e
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
end
