# require modules here
require "yaml"
require "pp"
def load_library(file_path)
  # code goes here
  
  fmoticons = ["☜(⌒▽⌒)☞", "(ΘεΘ;)", "(￣ー￣)", "o_O", "(^_-)"]
  
  dummy_hash = {}
  dummy_hash[fmoticons[0]] = ""
  puts "Dummy_hash"
  pp dummy_hash
  
  puts "\nLoading File"
  hash = YAML.load_file(file_path)
  pp hash
  puts "\n"
  puts "\n"
  puts "Running reduce on hash"
  jap_meaning_hash = hash.reduce({}) do |memo, (key,value)| 
      memo[value[1]] = key
      memo
  end
  puts "Outputting hash after reduce"
  pp hash
  us_meaning_hash = hash.reduce({}) do |memo, (key,value)| 
      memo[value[0]] = key
      memo
  end
  pp meaning_hash
  translated_hash = {:get_meaning => jap_meaning_hash, :get_emoticon => {}}}
  translated_hash
end

def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end