echo ">> build drivers"
make drivers
echo ">> udpate pipe-full.hcl"
make psim VERSION=full
echo ">> Run test"
./psim sdriver.yo > run1.log
./psim ldriver.yo > run2.log
echo ">> test on the ISA simulator"
../misc/yis sdriver.yo
../misc/yis ldriver.yo
echo ">> test on a range of block lengths with the ISA simulator"
./correctness.pl
# echo "test on benchmark programs"
# cd ../y86-code
# make testpsim
# echo ">> regression tests"
# cd ../ptest; make SIM=../pipe/psim TFLAGS=-i
echo "<<< Run benchmark >>>"
cd ../pipe
./benchmark.pl
