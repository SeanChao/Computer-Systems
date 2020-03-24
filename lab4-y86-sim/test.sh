f=$1
steps=$2

cd y64-base; ./y64asm-base ${f}.ys
mv "${f}.bin" "../y64-app-bin/${f}.bin"
cd ..
./yat -a ${f} ${steps}
