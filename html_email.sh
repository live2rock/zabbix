#!/bin/sh
export smtpemailfrom=zabbix@yourdomain.com
export zabbixemailto="$1"
export zabbixsubject="$2"
export zabbixbody="$3"
export smtpserver=localhost # or your SMTP server
export smtplogin=SMTP_LOGIN
export smtppass=SMTP_PASSWORD
/usr/bin/sendEmail -f $smtpemailfrom -t $zabbixemailto -u $zabbixsubject \-m $zabbixbody -s $smtpserver:25  -o tls=no \-o message-content-type=html