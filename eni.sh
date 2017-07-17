curl -O http://redrockdigimark.com/apachemirror/cassandra/3.11.0/apache-cassandra-3.11.0-bin.tar.gz
tar -xvzf apache-cassandra-3.11.0-bin.tar.gz
yum install java-1.8.0-openjdk*
yum install git
git clone https://github.com/arun24816/ec2-utils.git
cd ec2-utils
cp ec2ifdown /sbin/
cp ec2ifscan /sbin/
cp ec2ifup /sbin/
cp ec2udev /sbin/
cp 51-ec2-hvm-devices.rules /etc/udev/rules.d
cp 53-ec2-network-interfaces.rules /etc/udev/rules.d
cp 75-persistent-net-generator.rules /etc/udev/rules.d
cp 52-ec2-vcpu.rules /etc/udev/rules.d
cp ec2net-functions /etc/sysconfig/network-scripts
cp ec2net.hotplug /etc/sysconfig/network-scripts

sudo mkdir -p /etc/dhcp/dhclient.d
cp ec2dhcp.sh /etc/dhcp/dhclient.d
cp elastic-network-interfaces.service /etc/systemd/system/
cp ec2-ifup@.service /etc/systemd/system/

systemctl start elastic-network-interfaces

echo "Successfully installed"


CREATE KEYSPACE tutorialspoint WITH replication = {'class':'SimpleStrategy', 'replication_factor' : 3};
CREATE TABLE emp(emp_id int PRIMARY KEY,emp_name text,emp_city text,emp_sal varint,emp_phone varint);
INSERT INTO emp (emp_id, emp_name, emp_city,emp_phone, emp_sal) VALUES(1,'ram', 'Hyderabad', 9848022338, 50000);
