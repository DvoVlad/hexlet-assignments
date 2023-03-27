# frozen_string_literal: true

# BEGIN
def get_same_parity(data)
  if(data.empty?)
	return []
  end
  result = data
  if(data[0] % 2 == 0)
    result.filter! do|item|
      item % 2 == 0
    end
  else
    result.filter! do|item|
      item % 2 == 1
    end
  end
  result
end
# END
