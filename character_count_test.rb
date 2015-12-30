gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require_relative '../character_count'
require 'pry'

class CharacterCountTest < Minitest::Test
  def test_it_has_character_count_method
    cc = CharacterCount.new
    assert cc.respond_to?(:character_count)
  end

  def test_can_count_characters
    cc = CharacterCount.new
    assert_equal "c: 1\nb: 1\na: 1\n", cc.character_count("abc")
  end

  def test_it_returns_the_count_of_each_character_in_a_string
    cc = CharacterCount.new
    assert_equal " : 6\no: 3\nr: 3\nn: 3\na: 3\nw: 2\nl: 2\nt: 2\np: 1\nk: 1\nf: 1\ny: 1\nW: 1\ni: 1\ne: 1\ng: 1\ns: 1\nI: 1\n", cc.character_count("I really want to work for Wingspan")
  end
end
