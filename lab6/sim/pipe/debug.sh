./gen-driver.pl -f $2 -n $1 -rc > driver.ys
make driver.yo
../misc/yis driver.yo
