require 'strscan'
require 'prettyprint'

class CSSSyntax
  def css_block
    # .scan(/(.*\s*.*{\s*.*\s*.*\s*}*)/)
  end

  def selector
    /.+\s*\{ /
  end

  def declaration
    /\A\{(\w+|\n*)\z\}/
  end


  def property

  end

  def value

  end

  def tokenizer

  end
end

class Document
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def read_document
      contents = File.read(path)
  end

  # File.foreach(path) do |requests|
  #   if requests.start_with?()
  # end
end


# file = Document.new(ARGV.first)

# pp file.read_document.scan(/(.*\s*.*{\s*.*\s*.*\s*})/)

pp File.each(ARGV.first) do ||


# b = 2
# begin
#   a + b
# rescue => detail
#   puts detail.backtrace.join("\n")
# end




# def method(bloc)
#   document.error unless bloc.test
# end
