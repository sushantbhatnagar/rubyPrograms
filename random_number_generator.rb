

# Generates a random number
def generate_random_number
	rand(100)
end

# Stores a number in the file results.yaml
def store_results_file
	aFile = File.new("./random_number_result.txt", "r+")
	aFile.truncate(0)
	number = generate_random_number
	puts aFile.syswrite("#{number}")
end

store_results_file
