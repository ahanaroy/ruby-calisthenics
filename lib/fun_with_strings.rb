module FunWithStrings
  def palindrome?
    # your code here
    p=self.downcase.gsub(/\W*\s*\d*/,'')
    p==p.reverse
  end
  def count_words
    # your code here
    words = self.downcase.gsub(/\W*\s*\d*([!@#$%^&*()-=_+|;':",.<>?'])/,'').split(" ")
    count = Hash.new(0)
    words.each {|word| count[word]+=1}
    count.each {|a,b| puts a +" " + b.to_s}
  end
  def anagram_groups
    # your code here
    result_group=Array.new
    words = self.split(" ")
    words.each do |this_word| 
      temp=[]#temporarily hold result
      words.each do |next_word|
        if (this_word.downcase.chars.sort.join==next_word.downcase.chars.sort.join)
          temp.push(next_word)
        end
      end
      result_group.push(temp)
    end
    result_group
  end
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
