class String

def word_count
	arr = self.split(" ")
	return arr.length
end

def word_frequencies
	arr = self.split(" ")
	arr.sort!
	histogram = Hash.new(0)
	arr.each do |word|
		histogram[word.downcase.to_sym] += 1
	end
	return histogram
end


def unique_words
	hash = self.word_frequencies
	arr = []
	hash.each_key { |key| arr << key.to_s }
	return arr
end

def unique_word_count
	self.unique_words.length
end


end