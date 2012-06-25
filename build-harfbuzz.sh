

##
##
## DIR=/opt/harfbuzz
rm -vf harfbuzz_wrap.cxx
rm -vf harfbuzz.so harfbuzz_wrap.o
swig  -c++  -lua harfbuzz.i 
g++ -fPIC -c harfbuzz_wrap.cxx -I. -I/usr/include/freetype2 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/opt/swig-2.0.1/include -I/usr/include/lua5.1  -o harfbuzz_wrap.o
#
##
## 
## g++ -Wall -shared -Wl,-rpath,$DIR/lib -I. -I/usr/include/freetype2 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/lua5.1 -L. -L$DIR/lib  harfbuzz_wrap.o -lharfbuzz    -o harfbuzz.so
g++ -Wall -fPIC -shared -I. -I/usr/include/freetype2 -I/usr/include/glib-2.0 -I/usr/lib/glib-2.0/include -I/usr/include/lua5.1 -L.   harfbuzz_wrap.o -lharfbuzz    -o harfbuzz.so
strip --strip-unneeded harfbuzz.so
lua -e 'require("harfbuzz"); for k,v in pairs(harfbuzz) do print(k,v) end'







