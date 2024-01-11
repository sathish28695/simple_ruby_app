# test/test_app.rb
require_relative '../app'
require 'minitest/autorun'

class TestApp < Minitest::Test
  def test_add_numbers
    assert_equal 8, add_numbers(5, 3)
  end
end
