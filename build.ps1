# get assimp to the correct version
git clone -https://github.com/assimp/assimp.git assimp 
cd assimp
git checkout v4.0.1
cd ..

# build 140 x86
mkdir build_v140_x86
cd build_v140_x86
cmake -G "Visual Studio 14 2015" ../assimp
cmake --build . --config release
cmake --build . --config debug
cd ..

# build 140 x64
mkdir build_v140_x64
cd build_v140_x64
cmake -G "Visual Studio 14 2015 Win64" ../assimp
cmake --build . --config release
cmake --build . --config debug
cd ..

# build 141 x86
mkdir build_v141_x86
cd build_v141_x86
cmake -G "Visual Studio 15 2017" ../assimp
cmake --build . --config release
cmake --build . --config debug
cd ..

# build 141 x64
mkdir build_v141_x64
cd build_v141_x64
cmake -G "Visual Studio 15 2017 Win64" ../assimp
cmake --build . --config release
cmake --build . --config debug
cd ..

