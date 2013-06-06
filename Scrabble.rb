require 'minitest/autorun'

def scrable_score(word, bounes=:single)
  bounes = 1 if bounes == :single
  bounes = 2 if bounes == :double
  bounes = 3 if bounes == :triple

  sum = 0
  word.downcase!
  sum += (1 * word.scan(/[aeioulnrst]/).length)
  sum += (2 * word.scan(/[dg]/).length)
  sum += (3 * word.scan(/[bcmp]/).length)
  sum += (4 * word.scan(/[fhvwy]/).length)
  sum += (5 * word.scan(/[k]/).length)
  sum += (8 * word.scan(/[jx]/).length)
  sum += (10 * word.scan(/[qz]/).length)

  sum *= bounes
end


class Test_scrable_score < MiniTest::Unit::TestCase
  def test_scrable_cabbage_equals_14
    assert_equal 14, scrable_score("cabbage")
  end
  def test_scrable_Cabbage_equals_14
    assert_equal 14, scrable_score("Cabbage")
  end
  def test_scrable_single_word_equales_14
    assert_equal 14, scrable_score("cabbage", :single)
  end
  def test_scrable_double_word_equales_28
    assert_equal 28, scrable_score("cabbage", :double)
  end
  def test_scrable_triple_word_equales_42
    assert_equal 42, scrable_score("cabbage", :triple)
  end
end
