module Effects
  def self.reverse
    process_by_word(&:reverse)
  end

  def self.echo(count)
    process_by_word do |word|
      word.chars.map {|c| c * count }.join
    end
  end

  def self.loud(count)
    process_by_word {|word| word.upcase + "!" * count }
  end

  private

  def self.process_by_word(&block)
    -> (words) do
      words.split(" ")
        .map(&block)
        .join(" ")
    end
  end
end
