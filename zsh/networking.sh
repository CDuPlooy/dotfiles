# Get the ipv4 address of the specified network interface; ipi wlan0
function ipi(){
	ip address show $1 | grep inet -m 1 -h | cut -d '/' -f1 | awk '{print $2}'
}

# Get the ipv6 address of the specified network interface; ipi6 wlan0
function ipi6(){
	ip address show $1 | grep inet6 -m 1 -h | cut -d '/' -f1 | awk '{print $2}'
}
