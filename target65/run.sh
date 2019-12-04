echo "./run.sh id=$1 [-q]=$2 ?"
read flag
if [ "$flag" = "n" ]; then
    echo exit...
    exit
fi
cat exploit.txt > exploit-$1.txt
./hex2raw < exploit.txt > exploit-raw-$1.txt
./ctarget $2 < exploit-raw-$1.txt
