require 'minitest/autorun'
require 'minitest/rg'
require_relative '../models/camelcaser'

class TestCalculator < Minitest::Test


  def setup

    @camelcaser = CamelCaser.new('camel/case/me')

  end



  def test_camelize

    assert_equal('CamelCaseMe', @camelcaser.camelize)

  end



















end