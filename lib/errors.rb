require 'colorize'

# rubocop:disable Layout/LineLength
module SyntaxErrors
  class TrailingSpaceError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.size}] " + 'TrailingSpaceError'.red + ': white trailing space'
    end
  end

  class NoSpaceAfterCError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.index(/(:\w+)/)}] " + 'NoSpaceError'.red + ": no space after the ':' colon"
    end
  end

  class SpaceBeforeCError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.index(/(\s+:)/)}] " + 'SpaceError'.red + ": white space before ':' colon"
    end
  end

  class SpaceBeforeSCError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.index(/(\s+;)/)}] " + 'SpaceError'.red + ": white space before ';' semicolon"
    end
  end

  class NoIndentError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:0] " + 'NoIndentError'.red + ': use two space indentation'
    end
  end

  class NoSemiColonError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.index(/(\n)$/)}] " + 'NoSemiColonError'.red + ": missing ending ';' semicolon"
    end
  end

  class SpaceBeforeOPError < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:#{str.index(/(\n)$/)}] " + 'SpaceBeforeOPError'.red + ": missisng space before '{' opening bracket"
    end
  end

  class NoEndFileBlancLine < StandardError
    attr_reader :str, :idx

    def initialize(str, idx)
      @str = str
      @idx = idx
    end

    def message
      "#{ARGF.filename.white} [#{idx + 1}:0] " + 'NoEndFileBlancLine'.red + ': file not ending with blanc line'
    end
  end
end
# rubocop:enable Layout/LineLength
