class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # TODO: Implement this method
    words = str.split()
    for index in 0 .. words.length-1
      capitilized = false
      if words[index][0].chr == words[index][0].chr.upcase
        capitilized = true
      end
      if words[index].length > 4
        punc = ""
        if words[index][words[index].length-1] =~ /[[:punct:]]/
          punc = words[index][words[index].length-1]
        end
        if capitilized ? words[index] = "Marklar" + punc : words[index] = "marklar" + punc
        end 
      end
    end
    return words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # TODO: Implement this method
    a = [1, 1, 2]
    b = 3
    for index in  b .. nth-1
      a[index] = a[index-1] + a[index-2]
    end
    sum = 0
    a.each do |item|
      if item.even?
        sum += item
      end
    end
    return sum
  end
#For debug only
#E = Exercise.new
#puts E.marklar("How was the weather today? I have not been outside.")
#puts E.even_fibonacci(11)
end
