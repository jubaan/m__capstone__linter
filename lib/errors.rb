require 'colorize'

# rubocop:disable Layout/LineLength
module SyntaxErrors
  class TrailingSpaceError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\s+\n)$/)}] " + 'TrailingSpaceError'.red + ': Line ending with white space'
    end
  end

  class NoSpaceAfterCError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(:\w+)/)}] " + 'NoSpaceError'.red + ": no space between the ':' colon and the value"
    end
  end

  class SpaceBeforeCError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\s+:)/)}] " + 'SpaceError'.red + ": Adding white space between property ':' colon"
    end
  end

  class SpaceBeforeSCError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\s+;)/)}] " + 'SpaceError'.red + ": white space before ';' semicolon"
    end
  end

  class NoIndentError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:0] " + 'NoIndentError'.red + ': no two space indentation at the beginning of the line'
    end
  end

  class NoSemiColonError < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:#{line_string.index(/(\n)$/)}] " + 'NoSemiColonError'.red + ": line without ending ';' semicolon"
    end
  end

  class NoEndFileBlancLine < StandardError
    attr_reader :line_string, :line_index

    def initialize(line_string, line_index)
      @line_string = line_string
      @line_index = line_index
    end

    def message
      "#{ARGF.filename.white}[#{line_index + 1}:0] " + 'NoEndFileBlancLine'.red + ': file not ending with blanc line'
    end
  end
end
# rubocop:enable Layout/LineLength
