# Package command apne app identify kr leta hai ki _Fedora/ Debian_ machine hai aur install kr deta hai:
- hosts: all
  become: yes
  tasks:
    - name: "install all the pacakges"
      package:
        name: "{{item}}"
        state: present
      with_items:
        - vsftpd
