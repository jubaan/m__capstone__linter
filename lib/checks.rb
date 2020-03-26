require_relative './errors.rb'

module Checks
  include SyntaxErrors

  def white_trailing_space?(str, idx)
    raise TrailingSpaceError.new(str, idx) unless str.match?(/([^\s]\n)$/) || str.match?(/^\n$/)
  rescue TrailingSpaceError => e
    e.message
  end

  def space_after_colon?(str, idx)
    raise NoSpaceAfterCError.new(str, idx) if str.match?(/(:\w+)/)
  rescue NoSpaceAfterCError => e
    e.message
  end

  def space_before_colon?(str, idx)
    raise SpaceBeforeCError.new(str, idx) if str.match?(/( :)/)
  rescue SpaceBeforeCError => e
    e.message
  end

  def indent?(str, idx)
    raise NoIndentError.new(str, idx) if str.match?(/^\w+\s*:\s*;*/)
  rescue NoIndentError => e
    e.message
  end

  def end_semicolon?(str, idx)
    raise NoSemiColonError.new(str, idx) unless str.match?(/(;.*)$/) || str.match?(/({|})/) || str.match?(/^\n$/)
  rescue NoSemiColonError => e
    e.message
  end

  def space_before_semicolon?(str, idx)
    raise SpaceBeforeSCError.new(str, idx) if str.match?(/( ;)+/)
  rescue SpaceBeforeSCError => e
    e.message
  end

  def space_before_open_bracket?(str, idx)
        raise SpaceBeforeOPError.new(str, idx) unless !str.match(/\w+{\n$/)
  rescue SpaceBeforeOPError => e
    e.message
  end
end
