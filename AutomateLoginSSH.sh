#!/usr/bin/expect -f
## Testing expect command


set timeout 10
set host $env(SSH_HOST)
set key $env(SSH_KEY)

puts "\nConnecting to $host\n"


spawn ssh -i $key $host


expect {
	"yes/no" {
	send "yes\r"
	exp_continue
	}
	"$ " {}
}

puts "\nGet Hostname\n"
send "hostname\r"

expect "$ "

puts "\nGet df command output \n"
send "df -h\r"

expect "$ "
interact
