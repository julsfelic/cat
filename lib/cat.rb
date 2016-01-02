class Cat
  attr_reader :args

  def initialize(args)
    @args = args
  end

  def format_content(filename)
    File.read(filename)
  end

  def format_files
    args.map do |arg|
      format_content(arg)
    end.join
  end

  def print_contents
    print format_files
  end
end

if __FILE__ == $PROGRAM_NAME
  cat = Cat.new(ARGV)
  cat.print_contents
end
