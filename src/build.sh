pip install lark

pushd .
cd external/avr-master
./build.sh
cd ../..
popd

pushd .
cd external/cmurphi/src
make
cd ../../..
popd

pushd .
cd external/chisel-template
sbt build
cd ../..
popd