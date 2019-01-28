#!/bin/bash
scriptpath=$0
tempout=`df --output=source,target $scriptpath | grep /dev`
msource=`echo $tempout | awk '{print $1}'`
starget=`echo $tempout | awk '{print $2}'`
if [[ $starget && ! "$starget" == "/" ]]; then
    #remount
    #msource=UUID=2AFAD6ECFAD6B2F5
    mtarget=/media/kerwin
    if [[ ! -d $mtarget || "`ls $mtarget/|wc -l`" -eq "0" ]]
    then
        newscriptpath=`echo $scriptpath | sed "s:$starget:$mtarget:g"`
        targetcmd="umount -f $msource; mkdir -p $mtarget && mount -t ntfs-3g -o permissions $msource $mtarget && $newscriptpath $@"
        echo $targetcmd && eval $targetcmd
        exit
    fi
fi
user=u~u
hdir=.rc-ubuntu
ldir=.rc-local
edir=.rc-ext
cdir=$(cd "$(dirname "$0")";pwd)
#rpath=$(cd $cdir;cd "$(git rev-parse --show-toplevel)/../";pwd)
rpath=$(cd $cdir;cd "../";pwd)
#hpath=$cdir/$hdir
upath=/$user
hpath=$upath/$hdir
lpath=$hpath/$ldir
epath=$hpath/$edir

echo $upath[$rpath]
rm -rf $upath;ln -s $rpath $upath

echo $hpath[$cdir/$hdir]
rm -rf $hpath;ln -s $cdir/$hdir $hpath

if [[ $1 && -d $1 ]]
then
  _lpath=$(cd $1;pwd)
else 
  _lpath=$rpath
fi
echo $lpath[$_lpath]
rm -rf $lpath;ln -s $_lpath $lpath

echo $epath[$cdir/.ext]
rm -rf $epath;ln -s $cdir/.ext $epath

#create user
egrep "^$user" /etc/passwd >& /dev/null
if [ $? -eq 0 ]
then
    cat /etc/passwd | grep "^$user" | xargs -i echo "del [{}]"
    userdel -f $user
fi
useradd -m -d $hpath -o -u 0 -g 0 -s /bin/bash -p "$(openssl passwd -1 .)" $user
echo $'[User]\nSystemAccount=true' > /var/lib/AccountsService/users/$user
cat /etc/passwd | grep "^$user" | xargs -i echo "add [{}]"
sort -r -g -t : -k 3 /etc/passwd -o /etc/passwd

xhost +
#xhost +SI:localuser:$user && sudo -u $user



#exec $(dirname "$0")/a0a/ileler/configs/upan/start-ubuntu.sh "$@" > $(dirname "$0")/a0a-ubuntu.log
