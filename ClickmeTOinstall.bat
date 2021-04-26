@echo.
@echo ============================================
@echo =   This is the installation program of OpenBr made by Zzx.
@echo.
@echo =   Please follow the instruction and wait patiently.
@echo =   Remember to quit your antivirus program.
@echo.
@echo ============================================
@echo.

::cd ".\opencv"
::mkdir build-msvc2019
::cd build-msvc2019
::cmake -G "NMake Makefiles" -DBUILD_PERF_TESTS=OFF -DBUILD_TESTS=OFF -DWITH_FFMPEG=OFF -DCMAKE_BUILD_TYPE=Debug ../sources
::nmake
::nmake install
::cmake -DCMAKE_BUILD_TYPE=Release ../sources
::nmake
::nmake install
::nmake clean

::pause



::cd "..\..\openbr-master"
::cd ".\openbr-master"
mkdir build-msvc2019
cd build-msvc2019
cmake -G "CodeBlocks - NMake Makefiles" -DCMAKE_PREFIX_PATH="./opencv/build-msvc2019/install; ./msvc2019" -DCMAKE_INSTALL_PREFIX="./install" -DBR_INSTALL_DEPENDENCIES=ON -DCMAKE_BUILD_TYPE=Release ..


cd ..\openbr
mkdir bin
xcopy "..\opencv\build-msvc2019\install\x86\vc16\bin" ".\bin"
cd ..\build-msvc2019
nmake
nmake install

@echo.
@echo ****************************************************************************************************
@echo.
@echo *** Please open "openbr-master/build-msvc2019/openbr/cmake_install.cmake" and replace the code
@echo ***            "/openbr-master/openbr/NOTFOUND/../bin/"
@echo ***   with
@echo ***            "/opencv/build-msvc2019/install/x86/vc16/bin/"
@echo.
@echo ****************************************************************************************************
@echo.
pause
nmake install

::F:\QT\Tools\QtCreator\bin\qtcreator.exe

::cd C:\test\openbr-master\build-msvc2019
::c:
::cpack -G ZIP
::pause
::C:/test/opencv/build-msvc2019/install/x86/vc16/bin
::replace
::C:/test/openbr-master/openbr/NOTFOUND/../bin/



