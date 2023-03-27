# frozen_string_literal: true

# BEGIN
def count_by_years(users)
  result = users.reduce({}) do |acc, u|
    if u[:gender] == 'male'
      bdate = u[:birthday].split('-').first
      acc[bdate] ||= 0
      acc[bdate] += 1
    end
    acc
  end
  result
end
# END
