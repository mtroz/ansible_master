
ssh-keygen -f /root/.ssh/id_rsa -t rsa -b 4096 -N ""

echo "Utilisation de ansible pour le transfert de clé"
sleep 2s

ansible-playbook -k /tmp/playbook/playbook_ssh_key.yaml

sed -ri 's/^ask_pass\s+.*/#ask_pass = False/' /etc/ansible/ansible.cfg