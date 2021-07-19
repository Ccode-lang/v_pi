printf "fetching tcc...\n\n"
git clone --depth 1 --quiet --single-branch https://github.com/vlang/v vrep
cd vrep 
make latest_tcc
cd ..
printf "fetching vc...\n\n"
git clone --depth 1 --quiet --single-branch https://github.com/vlang/vc v
cd v
printf "building v bianary...\n\n"
gcc -o v v.c > /dev/null
cd ..
printf "copying extras...\n\n"
cp -r vrep/vlib v/
cp -r vrep/thirdparty v/
cp -r vrep/cmd v/
printf "removing v repo...\n\n"
rm -rf vrep
printf "\n\n\n\nopening v repl\n\n\n\n"
v/v
