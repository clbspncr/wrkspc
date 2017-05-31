#!/bin/bash
#update tags for perl development
libs=$(getpllib)
commonmods=$(find /devl/edw/common/lib/EDW/* | grep -e 'pm$')
commonlist=$(for f in $commonmods; do echo -n "$f ";done)
full=1
while getopts ":fl" opt;do
        case $opt in
                f ) full=0
                        ;;
                l ) full=1
                        ;;
                * ) echo "Usage: update-tags-dpim
                        -f <optional> for full modules
                        -l <optional> list available modules
                        "
                        ;;
        esac
done
if [ $full -eq 0 ]; then
        mods=$(for f in $libs; do find $f | grep -e 'pm$'| grep -v -e 'man/man3' -e 'DateTime' -e 'Language' -e 'TZ' -e 'Offset';done)
        list=$(for f in $mods; do echo -n "$f ";done)
        perl ~/bin/pltags.pl ~/dpim/lib/*.pm $list

elif [ $full -eq 1 ];then
        mods=$(for f in $libs; do find $f | grep -e 'pm$';done)
        list=$(for f in $mods; do echo -n "$f ";done)
        for f in $mods; do echo "$f ";done

else
        perl ~/bin/pltags.pl ${commonlist} ~/dpim/lib/*.pm
fi
