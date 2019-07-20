# require modules here
require "yaml"


def load_library(file)
  file = YAML.load(File.read("./lib/emoticons.yml"))
  hash = {}
   hash["get_meaning"]= {} 
   hash["get_emoticon"] = {}
  
  file.each do |key,val|  
    p val
     hash["get_meaning"] ={
       "#{val[0]}" => "#{val[1]}"
     }
     
     hash["get_emoticon"][key] ={
        "#{val[1]}" => "#{val[0]}"
     }
  end
           
  hash
  
end 


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end   
 