#!/bin/bash
highlight="\033[34;43m"
bold="\033[1m"
normal="\033[0m]"
freespace=$(df -h / grep - E "\/$" | awk '{print $4}')
logdate=$(date +"%Y%m%d")
logfile="$logdate"_report.log


echo -e $bold"System Report:"$HOSTNAME"$normal
printf "\tSystem type: \t%s\n" $MACHTYPE
printf "\tBash Version:\t%s\n" $BASH_VERSION
printf "\tFree Space:\T%s\n" $freespace
echo -e $highlight"This system info summary has been saved to $logfile"$normal
cat <<- EOF > $logfile

EOF

printf "SYS:\t%s\n" $MACHTYPE >> $logfile
printf "BASH:\t%s\n" $BASH_VERSION >> $logfile

