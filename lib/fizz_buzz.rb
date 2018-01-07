def fizz_buzz(num)
  if num % 15 == 0
    "Fizz Buzz"
  elsif num % 3 == 0
    "Fizz"
  elsif num % 5 == 0
    "Buzz"
  else
    num.to_s
  end
end

(1..15).each {|n| puts fizz_buzz(n) }
