@echo off
@rem Build Windows x64
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" amd64

echo Build Windows x64 Editor
scons p=windows tools=yes -j4

echo Build Windows x64 Release Build
scons p=windows tools=no target=release -j4

echo Build Windows x64 ReleaseDebug Build
scons p=windows tools=no target=release_debug -j4

@rem Build Windows x86
"C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\VC\Auxiliary\Build\vcvarsall.bat" x86

echo Build Windows x86 Release Build
scons p=windows tools=no target=release -j4

echo Build Windows x86 ReleaseDebug Build
scons p=windows tools=no target=release_debug -j4

@rem Build Linux x64

echo Build Linux x64 Release Build
bash.exe -c "scons p=x11 tools=no target=release bits=64 -j4"

echo Build Linux x64 ReleaseDebug Build
bash.exe -c "scons p=x11 tools=no target=release_debug bits=64 -j4"

@rem Build Linux x86

echo Build Linux x86 Release Build
bash.exe -c "scons p=x11 tools=no target=release bits=32 -j4"

echo Build Linux x86 ReleaseDebug Build
bash.exe -c "scons p=x11 tools=no target=release_debug bits=32 -j4"
