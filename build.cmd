windres --input=geodesic.rc --input-format=rc --output=geodesic.res --output-format=coff

set CFG=Release
mingw32-make

set CFG=Debug
mingw32-make
