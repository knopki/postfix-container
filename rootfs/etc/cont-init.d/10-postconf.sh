#!/bin/sh
/usr/sbin/postmap /etc/postfix/access
/usr/sbin/postalias /etc/postfix/aliases
/usr/sbin/postalias /etc/postfix/canonical
/usr/sbin/postmap /etc/postfix/generic
/usr/sbin/postmap /etc/postfix/relocated
/usr/sbin/postmap /etc/postfix/transport
/usr/sbin/postmap /etc/postfix/virtual
/usr/sbin/postmap /etc/postfix/tls_policy



