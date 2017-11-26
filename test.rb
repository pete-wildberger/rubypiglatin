# test.rb
require_relative "pigLatin.rb"
require "test/unit"

class TestPigLatin < Test::Unit::TestCase

  def test_pigLatin
    assert_equal('ewnay', pigLatin('New'))


end
