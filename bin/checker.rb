require_relative '../lib/document.rb'
require_relative '../lib/scanner.rb'

path = ARGV.first

document = Document.new(path)

content = document.read_document

scan_content = Scanner.new(content)

scan_content.error_scan
