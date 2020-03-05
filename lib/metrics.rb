require 'colorize'

module Rules
  def line_length(file)
    File.readlines(file).each_with_index do |line, idx|
      puts "#{File.basename(file)}:#{idx + 1}:#{line.length}" + " WARN: ".yellow + "Line too long" if line.length > 80
    end
  end

  def white_trailing_space(file)
    File.readlines(file).each_with_index do |line, idx|
      puts "#{File.basename(file)}:#{idx + 1}:#{line.length}" + " WARN: ".yellow + "Trailing white space" if /(\s\n)$/.match(line)
    end
  end
  
end
