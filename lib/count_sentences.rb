require 'pry'

class String

  def sentence?
    return self[-1] == "."
  end

  def question?
    return self[-1] =="?"
  end

  def exclamation?
    return self[-1] =="!"
  end

  def count_sentences
    
    self.split(/[.?!]/).reject {|string| string.empty?}.count 
  
    
  end
end

this_string = "This is a string. With two Sentences. Is this Ok? Yay!"

this_string.count_sentences