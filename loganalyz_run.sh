#!/bin/bash
#
# script run every $# minuts from cron
# example: "*/15 * * * * /root/scripts/loganalyz/loganalyz_run.sh >> /var/log/loganalyz_run.sh.log"

echo '======================================================================'
date
echo '======================================================================'

SCRIPTDIR=/root/scripts/loganalyz
${SCRIPTDIR}/loganalyz.sh ars-vm01.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm02.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm04.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm09.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm10.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm12.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm14.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm15.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm17.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm18.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm20.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm21.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm22.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh avaya-esx03.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh avaya-esx04.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh avaya-esx05.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh bipsr02.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh bipsr03.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh bipsr04.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-01.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-02.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-03.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-04.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-05.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-06.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-07.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-08.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-09.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-10.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-11.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-mcu.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-epm.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-p2v.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-voip.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm19.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh ars-vm11.at-consulting.ru
${SCRIPTDIR}/loganalyz.sh esx-s03
