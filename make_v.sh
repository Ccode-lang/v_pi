printf "trying to delete old v build...\n\n"
rm -rf v || printf "found no v folder\n\n"
printf "fetching tcc...\n\n"
git clone --depth 1 --quiet --single-branch https://github.com/vlang/v vrep
cd vrep 
make latest_tcc
cd ..
printf "fetching vc...\n\n"
git clone --depth 1 --quiet --single-branch https://github.com/vlang/vc v
cd v
printf "building v bianary...\n\n"
gcc -o v v.c
cd ..
printf "copying extras...\n\n"
cp -r vrep/vlib v/
cp -r vrep/thirdparty v/
cp -r vrep/cmd v/
printf "removing v repo...\n\n"
rm -rf vrep
printf "opening v repl\n\n"
v/v
