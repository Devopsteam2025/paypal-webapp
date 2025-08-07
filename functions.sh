#!/bin/bash
<<cmt 
this code is all about functions
and after i will push it to my git repository
cmt
monitor(){
	df -h
	du -h
}
whileloop(){
	l=100
	while((l<=10000))
	do
		echo the value of l is $l
		l=`expr l + 100`
	done
}
forloop(){
	for((i=10000; i>=100; i--))
	do
		echo the value of i is $i
	done
}
backup(){
	mkdir /tmp/backup
	cp -r * /tmp/backup
}
cases(){
	echo case starts here
	case $1 in
		start)
			echo starting tomcat
			echo tomcat started successfully;;
		stop)
			echo stopping tomcat
			echo tomcat stopped successfully;;
		*)
			echo check the argument you inserted
	esac
}
echo monitoring server
monitor
echo while loop starts
whileloop
echo forloop starting
forloop
echo backing up server
backup
echo starting or stopping tomcat
cases
echo functions end here with all neccessary functions

	
