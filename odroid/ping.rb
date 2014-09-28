#!/bin/ruby
#

ip = '100'
until system("ping -t 3 10.0.0.#{ip}")
	ip += 1
end
 
