#!/bin/bash



echo 'Scripts'


# create the VagrantFile
action="$1"


function hello (){
 echo Hello $1
}

function setup {
 echo Setup!
}












case "$1" in
	hello)
		hello $2
		;;
	setup)
	    	setup
	    	;;
        start)
            	start
            	;;
         
        stop)
            	stop
            	;;
         
        status)
            	status anacron
            	;;
        restart)
            	stop
            	start
            	;;
        condrestart)
            	if test "x`pidof anacron`" != x; then
                	stop
                	start
            	fi
            	;;
         
        *)
            echo $"Usage: $0 {start|stop|restart|condrestart|status}"
            exit 1
 
esac
