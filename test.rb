# test.rb
require_relative "pigLatin.rb"
require "test/unit"

class TestPigLatin < Test::Unit::TestCase
#tests whether the pig latin word translator is working correctly
  def test_pigLatin
    assert_equal('ewnay', pigLatin('New'))
  end
end
