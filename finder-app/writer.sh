#Accept the following arguments
# 	1. Full path to a file(including filename) on the filesystem, referred to as "writefile"
# 	2. Text string which will be written within this file, referred to as "writestr"
#Returns 
#	a. 1 error and print statements if any of the parameters above were not specified
#   b. 1 error and print statements if filesdir does not represent a directory on the filesystem
#   Prints a message "The number of files are X and the number of matching lines are Y"

#command: ./writer.sh /home/pi/projects/coursera/LinuxSystemProgramming/Assignments/finder-app/temp.txt "I am Linux "

NumberOfarguments=$#
#echo $NumberOfarguments

#echo "1: Path to directory"
writefile=$1
#echo $writefile
#echo "2: search stirng inside the directory"
writestr=$2
#echo $writestr


if [ $NumberOfarguments -eq 2 ]; 
	then echo $writestr >$writefile 	
	#echo "Number of arguments (writer): 2-OK"
	exit 0
else
	echo "failed : Total number of arguments should be :2 " 
	echo "    1) Full path to a file (including filename) "
	echo "    2) String to be written in the specified file"
	exit 1
fi

#if [ -d "$filesdir" ] ; 
#	then echo "is a directory"
#else
#	echo "Error: Path to directory: enter a valid directory " 
#	exit 1
#fi



