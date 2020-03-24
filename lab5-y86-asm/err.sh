make clean
echo "\033[0;34m"
./yat -s $1
echo "\033[0m"
./y64-base/y64asm-base -v y64-err/$1.ys >1
# hexdump y64-ins/$1.bin >2
./y64asm -v y64-err/$1.ys >3
# hexdump y64-ins/$1.bin >4
echo "\033[0;34mbase:\033[0m"
cat 1
echo "\033[0;34myours:\033[0m"
cat 3
echo "\033[0;34mdiff:\033[0m"
diff 1 3
# diff 2 4
rm 1 3
