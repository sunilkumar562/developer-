serverdetails=`hostname`

# Check Kernel Name
echo "KERNEL NAME :$(uname -s)" >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Kernel Release
echo "KERNEL RELEASE :$(uname -r)" >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Kernel Version
echo "KERNEL VERSION :$(uname -v)" >> $serverdetails
echo "=====================================" >> $serverdetails


# Check node name
echo "NODENAME :$(uname -n)" >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Name server
echo NAME SERVER : >> $serverdetails
cat /etc/resolv.conf >> $serverdetails
echo "=====================================" >> $serverdetails

# Check os name
echo "OS NAME :$(uname -o)" >> $serverdetails
echo "=====================================" >> $serverdetails

# Check os name
echo OS NAME REDHAT >> $serverdetails
cat /etc/redhat-release >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Host Name
echo "HOSTNAME :$(hostname)" >> $serverdetails
echo "=====================================" >> $serverdetails


# Check Hardware name
echo "HARDWARE NAME :$(uname -m)" >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Memory
echo MEMORY : >> $serverdetails
free -m >> $serverdetails
echo "=====================================" >> $serverdetails


# Check Ports
echo PORTS : >> $serverdetails
netstat -taulpn >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Partitions
echo PARTITIONS : >> $serverdetails
df -h >> $serverdetails
echo "=====================================" >> $serverdetails

# Accessible filesystems
echo FILESYSTEM : >> $serverdetails
cat /etc/fstab >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Java VERSION 
echo "JAVA VERSION  :" >> $serverdetails
java -version 2>> $serverdetails
echo "=====================================" >> $serverdetails

# Check Javac version
echo "JAVAC VERSION :" >> $serverdetails
javac -version 2>> $serverdetails
echo "=====================================" >> $serverdetails

# Check OS patch level information
echo "OS RELEASE :" >> $serverdetails
cat /etc/redhat-release >> $serverdetails
echo "=====================================" >> $serverdetails

# Check CRON jobs
echo "CRON JOBS :" >> $serverdetails
crontab -l 1>> $serverdetails
echo "=====================================" >> $serverdetails

# Check Password
echo "PSSWD :" >> $serverdetails
cat /etc/passwd >> $serverdetails
echo "=====================================" >> $serverdetails

# Check Groups
echo "GROUPS :" >> $serverdetails
cat /etc/group >> $serverdetails
echo "=====================================" >> $serverdetails

# Check sudoers (Privileges)
echo "SUDOERS :" >> $serverdetails
cat /etc/sudoers >> $serverdetails
echo "=====================================" >> $serverdetails

# check Packages
echo "PACKAGES :" >> $serverdetails
rpm -qa >> $serverdetails
echo "=====================================" >> $serverdetails


#Newly edited

# Check config List
echo CONFIG LIST : >> $serverdetails
/sbin/chkconfig --list >> $serverdetails
echo "=====================================" >> $serverdetails

# check Ip details
echo IP : >> $serverdetails
/sbin/ifconfig >> $serverdetails
echo "=====================================" >> $serverdetails


# Check services
echo SERVICES : >> $serverdetails
/sbin/service --status-all >> $serverdetails
echo "=====================================" >> $serverdetails


# list partition
echo PARTITION LIST: >> $serverdetails
/sbin/fdisk -l >> $serverdetails
echo "=====================================" >> $serverdetails


# Block Devices and File Systems
echo BLOCK DEVICES : >> $serverdetails
cat /proc/partitions >> $serverdetails
echo "=====================================" >> $serverdetails


# Check Kernel Architecture
echo ARCHITECTURE : >> $serverdetails
cat /proc/cpuinfo>> $serverdetails
echo "=====================================" >> $serverdetails


# Check Hosts
echo HOSTS : >> $serverdetails
cat /etc/hosts >> $serverdetails
echo "=====================================" >> $serverdetails


# installed packages 
echo "packages :$(yum list installed)" >> $serverdetails
echo "=====================================" >> $serverdetails

# hardware information 
echo "hardware :$(dmidecode)" >> $serverdetails
echo "=====================================" >> $serverdetails



# Network Time Protocal 
echo "Network Time Protocal :$(ntpdate)" >> $serverdetails
echo "=====================================" >> $serverdetails

#Network Information  
echo Network Information : >> $serverdetails
cat /etc/sysconfig/network >> $serverdetails
echo "=====================================" >> $serverdetails

#umask details
echo Umask details  : >> $serverdetails
cat /etc/profile  >> $serverdetails
echo "=====================================" >> $serverdetails



