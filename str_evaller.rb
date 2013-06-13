y = Thread.new { str= "while true;puts 'hi';end" ; puts "Infinite loop exists" if str["while true"]; eval str}
y.join(0.0005)
