set -e
npm install --verbose
CMAKE_OPTIONS=${CMAKE_OPTIONS:-"-DCMAKE_BUILD_TYPE=Release -DENABLE_NODE_BINDINGS=ON -DENABLE_MASON=ON"}

mkdir -p out
pushd out
cmake .. $CMAKE_OPTIONS
make -j8
popd
