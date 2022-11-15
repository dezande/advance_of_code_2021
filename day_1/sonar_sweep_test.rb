require 'minitest/autorun'
require_relative 'sonar_sweep'

class SonarSweepTest < Minitest::Test
  def test_count_0_increase
    input = [210, 200]
    assert_equal 0, SonarSweep.count_increase(input)
  end

  def test_count_1_increase
    input = [199, 200]
    assert_equal 1, SonarSweep.count_increase(input)
  end

  def test_count_2_increase
    input = [199, 200, 203]
    assert_equal 2, SonarSweep.count_increase(input)
  end

  def test_count_3_increase
    input = [199, 200, 203, 200, 210]
    assert_equal 3, SonarSweep.count_increase(input)
  end

  def test_from_exemple
    input = [199, 200, 208, 210, 200, 207, 240, 269, 260, 263]
    assert_equal 7, SonarSweep.count_increase(input)
  end
end