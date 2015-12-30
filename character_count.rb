class CharacterCount
  def character_count(string)
    output = ""
    order(string).each do |char, occurrence|
      output += "#{char}: #{occurrence}\n"
    end
    output
  end

  def occurences(string)
    each_char = {}
    string.chars.each do |char|
      each_char.include?(char) ? each_char[char] += 1 : each_char[char] = 1
    end
    each_char
  end

  def order(string)
    occurences(string).sort_by do |char, occurrence|
      occurrence
    end.reverse.to_h
  end
end
