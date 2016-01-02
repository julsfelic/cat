require 'test_helper'
require 'cat'

class CatAcceptanceTest < Minitest::Test
  def test_prints_out_the_contents_of_a_single_file
    printed = `ruby lib/cat.rb boring_work_stuff.md`
    expected = "My file extension is \"md\"\n" +
               "that means \"markdown\" to nearly everybody.\n" +
               "But that's my trick to divert inquiry...\n" +
               "for me, \"md\" implies \"my diary\"\n"

    assert_equal expected, printed
  end

  def test_prints_out_the_contents_of_two_files
    printed = `ruby lib/cat.rb boring_work_stuff.md lib/myfile.txt`
    expected = "My file extension is \"md\"\n" +
               "that means \"markdown\" to nearly everybody.\n" +
               "But that's my trick to divert inquiry...\n" +
               "for me, \"md\" implies \"my diary\"\n" +
               "i am quite sure\n" +
               "that within lib\n" +
               "resides myfile,\n" +
               "patiently immobile\n"

    assert_equal expected, printed
  end
end

class CatTest < Minitest::Test
  def test_formats_one_file
    cat = Cat.new(['boring_work_stuff.md'])

    assert_equal 4, cat.format_content('boring_work_stuff.md').lines.count
  end

  def test_receives_two_files_and_formats_output
    cat = Cat.new(['boring_work_stuff.md', 'lib/myfile.txt'])

    assert_equal 8, cat.format_files.lines.count
  end
end
