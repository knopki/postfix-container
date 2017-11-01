#!/bin/sh

# /etc/postfix/access
(: "${POSTFIX_access?}") 2>/dev/null && echo $POSTFIX_access > /etc/postfix/access
/usr/sbin/postmap /etc/postfix/access

# /etc/postfix/aliases
(: "${POSTFIX_aliases?}") 2>/dev/null && echo $POSTFIX_aliases > /etc/postfix/aliases
/usr/sbin/postalias /etc/postfix/aliases

# /etc/postfix/canonical
(: "${POSTFIX_canonical?}") 2>/dev/null && echo $POSTFIX_canonical > /etc/postfix/canonical
/usr/sbin/postalias /etc/postfix/canonical

# /etc/postfix/dynamicmaps.cf
(: "${POSTFIX_dynamicmaps?}") 2>/dev/null && echo $POSTFIX_dynamicmaps > /etc/postfix/dynamicmaps.cf

# /etc/postfix/generic
(: "${POSTFIX_generic?}") 2>/dev/null && echo $POSTFIX_generic > /etc/postfix/generic
/usr/sbin/postmap /etc/postfix/generic

# /etc/postfix/header_checks
(: "${POSTFIX_header_checks?}") 2>/dev/null && echo $POSTFIX_header_checks > /etc/postfix/header_checks

# /etc/postfix/main.cf
(: "${POSTFIX_main?}") 2>/dev/null && echo $POSTFIX_main > /etc/postfix/main.cf

# /etc/postfix/master.cf
(: "${POSTFIX_master?}") 2>/dev/null && echo $POSTFIX_master > /etc/postfix/master.cf

# /etc/postfix/relocated
(: "${POSTFIX_relocated?}") 2>/dev/null && echo $POSTFIX_relocated > /etc/postfix/relocated
/usr/sbin/postmap /etc/postfix/relocated

# /etc/postfix/transport
(: "${POSTFIX_transport?}") 2>/dev/null && echo $POSTFIX_transport > /etc/postfix/transport
/usr/sbin/postmap /etc/postfix/transport

# /etc/postfix/virtual
(: "${POSTFIX_virtual?}") 2>/dev/null && echo $POSTFIX_virtual > /etc/postfix/virtual
/usr/sbin/postmap /etc/postfix/virtual



