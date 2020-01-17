# require modules here
require "yaml"
require "pp"

def load_library(file_path)
  # code goes here
  hash = YAML.load_file(file_path)
  jap_meaning_hash = hash.reduce({}) do |memo, (key,value)| 
      memo[value[1]] = key
      memo
  end
  us_meaning_hash = hash.reduce({}) do |memo, (key,value)| 
      memo[value[0]] = value[1]
      memo
  end
  translated_hash = {:get_meaning => jap_meaning_hash, :get_emoticon => us_meaning_hash}
  translated_hash
end

def get_japanese_emoticon(file_path, emoticon)
  # code goes here
  load_library(file_path)
end

def get_english_meaning
  # code goes here
end