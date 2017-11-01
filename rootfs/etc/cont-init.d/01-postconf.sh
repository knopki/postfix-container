#!/bin/bash

for varname in ${!POSTFIX_*}
do
  name=${varname#POSTFIX_}
  value=${!varname}
  echo "${value}" > /etc/postfix/${name}
done

/usr/sbin/postmap /etc/postfix/access
/usr/sbin/postalias /etc/postfix/aliases
/usr/sbin/postmap /etc/postfix/canonical
/usr/sbin/postmap /etc/postfix/generic
/usr/sbin/postmap /etc/postfix/relocated
/usr/sbin/postmap /etc/postfix/transport
/usr/sbin/postmap /etc/postfix/virtual



