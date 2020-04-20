set -e
rm -f plugin.so
DATDIR=../../share ../../yosys-config --exec --cxx --cxxflags --ldflags -shared -o plugin.so plugin.cc
../../yosys -m ./plugin.so -p "test" | grep -q "Plugin test passed!"
