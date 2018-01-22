print "Text?: "
text = gets.chomp

begin
  print "Pattern?: "
  regexp = Regexp.new(gets.chomp)
rescue RegexpError => e
  puts "Invalid Pattern: #{e.message}"
  retry
end

matches = text.scan(regexp)
if matches.empty?
  puts "Nothing matched."
else
  puts "Matched: #{matches.join(", ")}"
end
