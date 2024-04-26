
check_ports() {
    local host=$1
    local ports=$2
    for port in $ports
    do
        if nc -z -w1 $host $port > /dev/null 2>&1; then
            echo "Port $port on $host is open"
        else
            echo "Port $port on $host is closed"
        fi
    done
}

read -p "Enter hostname or IP address: " host_input
read -p "Enter ports to check (comma-separated): " ports_input

IFS=',' read -ra ports <<< "$ports_input"

check_ports $host_input "${ports[@]}"

