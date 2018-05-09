require 'minitest/autorun'
require 'minitest/pride'
require './lib/translator'

class TranslatorTest < Minitest::Test
  def test_that_it_exists
    translator = Translator.new
    assert_instance_of Translator, translator
  end

  def test_it_can_change_from_english_to_morse_code
    translator = Translator.new
    expected = "......-...-..--- .-----.-..-..-.."
   assert_equal expected, translator.eng_to_morse("hello world")
  end
end
