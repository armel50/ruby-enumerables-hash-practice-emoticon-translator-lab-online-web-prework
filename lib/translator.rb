# require modules here
require "yaml"


def load_library(file)
  file = YAML.load(File.read("./lib/emoticons.yml"))
  hash = {}
   hash["get_meaning"]= {} 
   hash["get_emoticon"] = {}
  
  file.each do |key,val|  
    
     hash["get_meaning"] ={
       "#{val[1]}" => "#{key}"
     }
     val[1] 
     key
     
     
     hash["get_emoticon"] ={
       "#{val[0]}" => "#{key}"
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
 