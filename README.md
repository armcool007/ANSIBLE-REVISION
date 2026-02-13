if while connecting the machine if the error comes likes:
node2 | UNREACHABLE! => {
    "changed": false,
    "msg": "Failed to connect to the host via ssh: ec2-user@172.31.35.99: Permission denied (publickey).",
    "unreachable": true
}
which means:-
1) you have not changed the USER and OWNER to the currect user like ubuntu or ec2-user.
2) of .pem file and hosts file.
