# frozen_string_literal: true

# rubocop:disable Style/For

def make_censored(text, stop_words)
  # BEGIN
  array_text = text.split
  for word in stop_words do
	if(array_text.include? word)
      array_text.map! do |item|
		if(item == word)
			'$#%!'
		else
			item
		end
      end
	end
  end
  array_text.join ' '
  # END
end
# rubocop:enable Style/For
