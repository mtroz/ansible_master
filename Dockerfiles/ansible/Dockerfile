FROM williamyeh/ansible:debian9

COPY ./config/hosts /tmp
COPY ./config/ansible.cfg /etc/ansible
COPY ./config/initialize_host.sh /tmp
COPY ./config/initialize_ssh_key.sh /tmp
RUN chmod +x /tmp/initialize_host.sh
RUN chmod +x /tmp/initialize_ssh_key.sh
