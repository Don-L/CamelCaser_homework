require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/word_formatter'

class TestCalculator < Minitest::Test


  def setup

    @word_formatter = WordFormatter.new('eh9 1qz')

  end



  def test_format

    assert_equal('EH9 1QZ', @word_formatter.format)

  end



















end
