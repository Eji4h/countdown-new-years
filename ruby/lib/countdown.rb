new_year_time = Time.new(2025, 1, 1)

while Time.now < new_year_time
  time_diff = new_year_time - Time.now
  minutes = (time_diff / 60).to_i
  seconds = (time_diff % 60).to_i
  puts "New year is #{minutes} minutes and #{seconds} seconds away"
  sleep 1
end

puts "Happy New Year!"
