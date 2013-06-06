require 'minitest/autorun'


  def soc n
    if n == 1
       return 1
    else
      return n**3 + soc(n-1)
    end
  end

def soc_tail (n, sum=0)
    if n == 1
      return 1 + sum
    else
      return soc_tail(n-1, n**3 + sum )
    end
  end

class Test_cubes < MiniTest::Unit::TestCase

  def test_soc1_equals_1

    assert_equal 1 , soc(1)
  end
  def test_soc2_equals_9
    assert_equal 9 , soc(2)
  end
  def test_soc3_equals_36
    assert_equal 36 , soc(3)
  end

  def test_soc_tail1_equals_1
    assert_equal 1 , soc_tail(1, 0)
  end
  def test_soc_tail2_equals_9
    assert_equal 9 , soc_tail(2, 0)
  end
  def test_soc_tail3_equals_36
    assert_equal 36 , soc_tail(3, 0)
  end
end

