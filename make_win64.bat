mkdir build64 & pushd build64
cmake -G "Visual Studio 16 2019" -A x64 ..
popd
cmake --build build64 --config Release
md Plugins\x86_64
copy /Y build64\Release\hpatch.dll Plugins\x86_64\hpatch.dll
pause