
echo "172.20.0.5	web1" >> /etc/hosts
echo "172.20.0.6	db1" >> /etc/hosts
echo "172.20.0.7	lb1" >> /etc/hosts

cat /tmp/hosts >> /etc/ansible/hosts
