# frozen_string_literal: true

# BEGIN
def anagramm_filter(word, wordlist)
	wordarr = word.split('').sort;
	result = wordlist.filter do|item|
		item.split('').sort == wordarr
	end
	result
end
# END
