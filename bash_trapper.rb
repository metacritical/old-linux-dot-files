input = ARGV[0].to_s
commands = %x[ls /bin].to_s
p  $stdin.

#puts %x[pwd] #present working directory
if commands =~ /input/
  system("#{input}") rescue "Dont Know What To do"
else
  puts "Command Not Found"
end

