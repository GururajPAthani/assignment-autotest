
#Accept the following arguments
# 	1. Path to a directory on the filesystem, referred to as "filesdir"
# 	2. Text string which will be searched within these files, referred to as "searchstr"
#Returns 
#	a. 1 error and print statements if any of the parameters above were not specified
#   b. 1 error and print statements if filesdir does not represent a directory on the filesystem
#   Prints a message "The number of files are X and the number of matching lines are Y"

NumberOfarguments=$#
#echo $NumberOfarguments

#echo "1: Path to directory"
filesdir=$1
#echo $filesdir
#echo "2: search stirng inside the directory"
searchstr=$2
#echo $searchstr


if [ $NumberOfarguments -eq 2 ]; 
	then #echo "Number of arguments (finder) : 2-OK"
		if [ -d "$filesdir" ] ; 
			then 
			cd $filesdir
			grep $searchstr 
			pwd
			exit 0
		else
			echo "Error: Path to directory: enter a valid directory " 
			exit 1
		fi
else
	echo "failed : Total number of arguments should be :2 " 
	echo "    1) File Directory path"
	echo "    2) String to be searched in the specified directory"
	exit 1
fi

exit 0
