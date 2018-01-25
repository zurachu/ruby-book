module Effects
  def self.reverse
    -> (words) do
      words.split(" ")
        .map(&:reverse)
        .join(" ")
    end
  end

  def self.echo(count)
    -> (words) do
      words.split(" ")
        .map do |word|
          word.chars.map{|c| c * count }.join
        end
        .join(" ")
    end
  end

  def self.loud(count)
    -> (words) do
      words.split(" ")
        .map {|word| word.upcase + "!" * count }
        .join(" ")
    end
  end
end
