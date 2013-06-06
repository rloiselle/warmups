def fizzbuzz(start=1, finish=100)
  range = (start..finish).to_a
  range.each do |int|
    print "Fizz" if (int % 3).zero?
    print "Buzz" if (int % 5).zero?
    print int if (int % 15).zero?
  end
end

fizzbuzz
