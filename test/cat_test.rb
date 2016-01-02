require 'test_helper'

class CatAcceptanceTest < Minitest::Test
  def test_prints_out_the_contents_of_a_single_file
    printed = `ruby lib/cat.rb boring_work_stuff.md`
    expected = "My file extension is \"md\"\n" +
               "that means \"markdown\" to nearly everybody.\n" +
               "But that's my trick to diverty inquiry...\n" +
               "for me, \"md\" implies \"my diary\""

    assert_equal expected, printed
  end

  def test_prints_out_the_contents_of_two_files
    printed = `ruby lib/cat.rb boring_work_stuff.md lib/myfile.txt`
    expected = "My file extension is \"md\"\n" +
               "that means \"markdown\" to nearly everybody.\n" +
               "But that's my trick to diverty inquiry...\n" +
               "for me, \"md\" implies \"my diary\"\n" +
               "i am quite sure\n" +
               "that within lib\n" +
               "resides myfile,\n" +
               "patiently immobile"

    assert_equal expected, printed
  end
end

class CatTest < Minitest::Test
  def test_receives_one_file_and_formats_output
    skip
  end

  def test_receives_two_files_and_formats_output
    skip
  end
end
