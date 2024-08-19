NAME=$1

mkdir $NAME
cd $NAME
mkdir build
mkdir src
touch src/main.c
cp ~/bin/create-project/CMakeLists.txt . 
