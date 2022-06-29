require 'Digest'


puts "What encryption do you want to use?"
puts "1 - MD5"
puts "2 - SHA1"

encryption_choise = STDIN.gets.to_i

until (1..2).include?(encryption_choise)
  puts "Please enter correct value"
  encryption_choise = STDIN.gets.to_i
end

puts "Enter the message"

if encryption_choise == 1
  message = STDIN.gets.chomp
  encrypted_message = Digest::MD5.hexdigest "#{message}"
else
  message = STDIN.gets.chomp
  encrypted_message = Digest::SHA1.hexdigest "#{message}"
end
puts "Encrypded message: #{encrypted_message}"