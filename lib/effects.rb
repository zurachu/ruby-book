module Effects
  def self.reverse
    -> (words) { words.split(" ").map(&:reverse).join(" ") }
  end

  def self.echo(count)
    -> (words) do
      words.split(" ").map do |word|
        word.chars.map{|c| c * count }.join
      end.join(" ")
    end
  end

  def self.loud(count)
    -> (words) do
      words.split(" ").map do |word|
        word.upcase + "!" * count
      end.join(" ")
    end
  end
end
