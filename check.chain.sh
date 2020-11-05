#!/bin/bash
export PATH=$PATH:/home/ubuntu:/usr/bin:/usr/local/bin:/opt/go/bin
function checkfunction() {
pppid=`ps aux|grep $1|grep -v start_{$1} |grep -v grep|grep -v "app/mTest"|awk '{print $2}'`
   if [ "xx$pppid" == "xx" ] ; then
   	echo "$1 is down..."
	return 1
   else
   	echo "$1 is running... pid ${pppid}";
	return 0
   fi
}


checkfunction "./mTest"
if ! [ $? -eq 0 ] ; then
	echo "coind is down, restart..."
	/deploy/v2.1/testchain/mNode/check.chain.sh
fi
