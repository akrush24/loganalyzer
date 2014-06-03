#!/bin/bash
#
# script run every $# minuts from cron
# example: "*/15 * * * * /root/scripts/loganalyz/loganalyz_run.sh >> /var/log/loganalyz_run.sh.log"

echo '======================================================================'
date
echo '======================================================================'

SCRIPTDIR=/root/scripts/loganalyz
cd /root/scripts/loganalyz/vms; git pull
for H in `cat /root/scripts/loganalyz/vms/reports/all_esxis_info.csv |awk -F, '{print $1}'|sed 1d|sed 's/\"//g'`;
do
	if [[ ! $H =~ ^1 ]]
		then 
			${SCRIPTDIR}/loganalyz.sh $H.at-consulting.ru;
		else 
			${SCRIPTDIR}/loganalyz.sh $H;
	fi;
done
${SCRIPTDIR}/loganalyz.sh esx-s03
