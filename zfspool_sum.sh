#!/bin/bash
echo -e "Sum: \c"
cd /zpool/
find $PWD -type f -ls |awk '{sum+=$7};END{s=sum/1024;print s/1024"MB"}'
echo ""
echo -e "Witch compression ZFS: \c"
du -hsx $PWD|awk '{print }'
echo ""
zfs get compressratio zpool
