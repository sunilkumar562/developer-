serverdetails=`hostname -I |sed 's/ //g'| sed 's/\./\_/g'`
CURRENTDATE=`date "+-%d-%m-%Y-%H-%M"`

# Check Kernel Name
echo "KERNEL NAME :$(uname -s)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Kernel Release
echo "KERNEL RELEASE :$(uname -r)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Kernel Version
echo "KERNEL VERSION :$(uname -v)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv


# Check node name
echo "NODENAME :$(uname -n)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Name server
echo NAME SERVER : >> $serverdetails$CURRENTDATE.csv
cat /etc/resolv.conf >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check os name
echo "OS NAME :$(uname -o)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Host Name
echo "HOSTNAME :$(hostname -I)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv


# Check Hardware name
echo "HARDWARE NAME :$(uname -m)" >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Kernel Architecture
echo ARCHITECTURE : >> $serverdetails$CURRENTDATE.csv
lscpu >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv
# Check Hardware info
echo HARDWARE INFORMATION : >> $serverdetails$CURRENTDATE.csv
yum install lshw -y
lshw -short >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Memory
echo MEMORY : >> $serverdetails$CURRENTDATE.csv
free -m >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check services
echo SERVICES : >> $serverdetails$CURRENTDATE.csv
service --status-all >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Ports
echo PORTS : >> $serverdetails$CURRENTDATE.csv
netstat -taulpn >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Partitions
echo PARTITIONS : >> $serverdetails$CURRENTDATE.csv
df -h >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv


# Check config List
echo CONFIG LIST : >> $serverdetails$CURRENTDATE.csv
chkconfig --list >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# check Ip details
echo IP : >> $serverdetails$CURRENTDATE.csv
ifconfig >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# list partition
echo PARTITION LIST: >> $serverdetails$CURRENTDATE.csv
fdisk -l >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Accessible filesystems
echo FILESYSTEM : >> $serverdetails$CURRENTDATE.csv
cat /etc/fstab >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Block Devices and File Systems
echo BLOCK DEVICES : >> $serverdetails$CURRENTDATE.csv
lsblk >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Java VERSION 
echo "JAVA VERSION  :" >> $serverdetails$CURRENTDATE.csv
java -version 2>> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Javac version
echo "JAVAC VERSION :" >> $serverdetails$CURRENTDATE.csv
javac -version 2>> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check ENVIRONMENT VARIABLES
echo "ENVIRONMENT VARIABLES :" >> $serverdetails$CURRENTDATE.csv
grep -r JAVA_HOME /etc >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check OS patch level information
echo "OS RELEASE :" >> $serverdetails$CURRENTDATE.csv
cat /etc/redhat-release >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check CRON jobs
echo "CRON JOBS :" >> $serverdetails$CURRENTDATE.csv
crontab -l 2>> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Password
echo "PSSWD :" >> $serverdetails$CURRENTDATE.csv
cat /etc/passwd >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check Groups
echo "GROUPS :" >> $serverdetails$CURRENTDATE.csv
cat /etc/group >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# Check sudoers (Privileges)
echo "SUDOERS :" >> $serverdetails$CURRENTDATE.csv
cat /etc/sudoers >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv

# check Packages
echo "PACKAGES :" >> $serverdetails$CURRENTDATE.csv
rpm -qa >> $serverdetails$CURRENTDATE.csv
echo "=====================================" >> $serverdetails$CURRENTDATE.csv




