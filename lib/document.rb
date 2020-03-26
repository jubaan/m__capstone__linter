class Document
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def read_document
    File.open(path).readlines
  end
end
