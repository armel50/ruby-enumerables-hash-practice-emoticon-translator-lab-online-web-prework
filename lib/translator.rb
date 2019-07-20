# require modules here
require "yaml"


def load_library(file)
  file = YAML.load(File.read("./lib/emoticons.yml"))
  hash = {}
   hash["get_meaning"]= {} 
   hash["get_emoticon"] = {}
  
  file.each do |key,val| 
    #p val[1]
    
      if !hash["get_meaning"][val[1]]
        hash["get_meaning"][val[1]] = key
       end
  end
           
  hash
  
end 


def get_japanese_emoticon
  # code goes here
end

def get_english_meaning
  # code goes here
end   
 