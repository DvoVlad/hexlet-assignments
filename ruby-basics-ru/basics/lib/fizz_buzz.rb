# frozen_string_literal: true

# BEGIN
def fizz_buzz(start, stop)
  result = ''
  if(start < stop)
    start.upto(stop) do |n|
      if(n % 3 == 0 && n % 5 == 0)
        result += ' FizzBuzz'
      elsif(n % 3 == 0)
        result += ' Fizz'
      elsif(n % 5 == 0)
        result += ' Buzz'
      else
        result += " #{n}"
      end
    end
    result.strip
  elsif(start == stop)
	start.to_s
  else
    nil
  end
end
# END
