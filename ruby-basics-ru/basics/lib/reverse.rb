# frozen_string_literal: true

# BEGIN
def reverse(str)
  size = str.length - 1
  result = '';
  size.downto(0) { |n| result += str[n] }
  result
end
# END
