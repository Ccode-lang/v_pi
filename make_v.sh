git clone https://github.com/vlang/v vrep
cd vrep 
make
cd ..
git clone https://github.com/vlang/vc v
cd v
gcc -o v v.c
cd ..
cp -r vrep/vlib v/
cp -r vrep/thirdparty v/
cp -r vrep/cmd v/
rm -rf vrep
printf "\n\n\n\nopening v repl\n\n\n\n"
v/v