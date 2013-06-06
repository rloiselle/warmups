require 'minitest/autorun'

class Year
  #   on every year that is evenly divisible by 4
  #   except every year that is evenly divisible by 100
  #   except every year that is evenly divisible by 400.
    def initialize (year)
        @year = year
    end

    def leap?
       leap_4 && (!leap_100 || leap_400)
    end

    def leap_2?
       (leap_4 && !leap_100) || leap_400
    end

    def leap_4
        (@year % 4).zero?
    end

    def leap_100
        (@year % 100).zero?
    end

    def leap_400
        (@year % 400).zero?
    end
end


class Test_Year < MiniTest::Unit::TestCase
  def test_year_1996_is_leap
    assert_equal true, Year.new(1996).leap?
  end
  def test_year_1997_not_leap
    assert_equal false, Year.new(1997).leap?
  end
  def test_year_1900_not_leap
    assert_equal false, Year.new(1900).leap?
  end
  def test_year_2000_is_leap
    assert_equal true, Year.new(2000).leap?
  end
  def test_year_1996_is_leap_2
    assert_equal true, Year.new(1996).leap_2?
  end
  def test_year_1997_not_leap_2
    assert_equal false, Year.new(1997).leap_2?
  end
  def test_year_1900_not_leap_2
    assert_equal false, Year.new(1900).leap_2?
  end
  def test_year_2000_is_leap_2
    assert_equal true, Year.new(2000).leap_2?
  end
end
