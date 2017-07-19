class PigLatinizer

  def piglatinize(text)
    if !text[0..2].downcase.match(/[aeoui]/)
      @manipulated_text = "#{text[3..-1]}#{text[0..2]}ay"
    elsif !text[0..1].downcase.match(/[aeoui]/)
      @manipulated_text = "#{text[2..-1]}#{text[0..1]}ay"
    elsif text[0].downcase.match(/[aeoui]/)
      @manipulated_text = "#{text}way"
    else
      @manipulated_text = "#{text[1..-1]}#{text[0]}ay"
    end
  end

  def to_pig_latin(text)
    split_text = text.split
    @manipulated_text = split_text.map { |word| piglatinize(word) }.join(" ")
  end

end
