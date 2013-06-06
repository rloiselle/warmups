class Beer
  def self.song(range=99, drink="beer")
    range.downto(2) do |bottle|
      puts "#{bottle} bottles of #{drink} on the wall, #{bottle} bottles of #{drink}."
      puts "Take one down and pass it around, #{bottle -1} bottles of #{drink} on the wall.\n\n"
    end
      puts "1 bottle of #{drink} on the wall, 1 bottles of #{drink}."
      puts "Take one down and pass it around, no more bottles of #{drink} on the wall.\n\n"
  end
end

class Fixnum
  def bottles_of_beer(drink="beer")
    Beer.song(self, drink)
  end
end
2.bottles_of_beer("milk")

