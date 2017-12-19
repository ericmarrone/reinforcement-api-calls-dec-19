require 'httparty'

response = HTTParty.get('https://api.datamuse.com/sug?s=initilize')

response_json = JSON.parse(response.body)

corrections = []

response_json.each do |word|
  corrections << word["word"]
end

puts corrections
