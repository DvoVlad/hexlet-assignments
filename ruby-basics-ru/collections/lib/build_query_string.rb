# frozen_string_literal: true

# rubocop:disable Style/For
# BEGIN
def build_query_string(hash)
  result = [];
  reshash = hash.sort_by { |key| key }.to_h
  reshash.each { |key, value| result << "#{key}=#{value}" }
  result.join('&')
end
puts build_query_string({z: 1, a: 2})
# END
# rubocop:enable Style/For
