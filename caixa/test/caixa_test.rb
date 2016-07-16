require 'minitest/autorun'
require_relative './../caixa'

class CaixaTest < Minitest::Test
  def test_saque_10
    assert_equal [1, 0, 0, 0], Caixa.new(10).sacar
  end

  def test_saque_20
    assert_equal [0, 1, 0, 0], Caixa.new(20).sacar
  end

  def test_saque_30
    assert_equal [1, 1, 0, 0], Caixa.new(30).sacar
  end

  def test_saque_40
    assert_equal [0, 2, 0, 0], Caixa.new(40).sacar
  end

  def test_saque_50
    assert_equal [0, 0, 1, 0], Caixa.new(50).sacar
  end

  def test_saque_80
    assert_equal [1, 1, 1, 0], Caixa.new(80).sacar
  end

  def test_saque_90
    assert_equal [0, 2, 1, 0], Caixa.new(90).sacar
  end

  def test_saque_100
    assert_equal [0, 0, 0, 1], Caixa.new(100).sacar
  end

  def test_saque_330
    assert_equal [1, 1, 0, 3], Caixa.new(330).sacar
  end

  def test_saque_590
    assert_equal [0, 2, 1, 5], Caixa.new(590).sacar
  end
end
