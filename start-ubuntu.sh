#!/bin/bash
#remount
msource=UUID=2AFAD6ECFAD6B2F5
mtarget=/media/kerwin
if [[ ! -d $mtarget || "`ls /media/kerwin/|wc -l`" -eq "0" ]]
then
    echo "run as root > umount -f $msource; mkdir -p $mtarget && mount -t ntfs-3g -o permissions $msource $mtarget"
    exit 1
fi
user=u~u
hdir=.rc-ubuntu
ldir=$hdir.local
cdir=$(cd "$(dirname "$0")";pwd)
#rpath=$(cd $cdir;cd "$(git rev-parse --show-toplevel)/../";pwd)
rpath=$(cd $cdir;cd "../../";pwd)
#hpath=$cdir/$hdir
upath=/$user
lpath=$upath/$ldir
hpath=$upath/$hdir

echo $upath[$rpath]
rm -rf $upath;ln -s $rpath $upath

if [[ $1 && -d $1 ]]
then
  _lpath=$1
else 
  _lpath=$rpath
fi
echo $lpath[$_lpath]
rm -rf $lpath;ln -s $_lpath $lpath

echo $hpath[$cdir/$hdir]
rm -rf $hpath;ln -s $cdir/$hdir $hpath


#ext dir set
export _USER_EXT_=$cdir/.ext
fnameArray=(.IntelliJIdea .IntelliJIdea4U)
for fname in ${fnameArray[@]}
do
  cd $hpath && rm -rf $fname && ln -s $_USER_EXT_/$fname $fname && cd - >/dev/null
done

#common dir set
export _USER_COMMON_=$cdir/.common
for fname in $(ls -A $_USER_COMMON_)
do
  cd $hpath && rm -rf $fname && ln -s $_USER_COMMON_/$fname $fname && cd - >/dev/null
done

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
