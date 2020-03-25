require 'colorize'

module SyntaxErrors

  class TrailingSpaceError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\s+\n)$/)}] " + "TrailingSpaceError".red + ": ending white space"
    end
  end

  class NoSpaceAfterError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(:\w+)/)}] " + "NoSpaceError".red + ": no space after ':'"
    end
  end

  class SpaceBeforeError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/( :)/)}] " + "SpaceError".red + ": white space before ':'"
    end
  end

  class NoIndentError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:0] " + "NoIndentError".red + ": no two space indentation at the beginning of the line"
    end
  end

  class NoSemiColonError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\n)$/)}] " + "NoSemiColonError".red + ": line without closing semicolon ';'"
    end
  end
end
