CXX = g++
CXXFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS =
EXECUTABLE = c++-hello
CPP_BINDIR = ../../bin/c++

$(EXECUTABLE):
	mkdir -p $(CPP_BINDIR)
	$(CXX) *.cpp $(CXXFLAGS) $(LDFLAGS) -o $(CPP_BINDIR)/$(EXECUTABLE)

build: $(EXECUTABLE)

run: $(EXECUTABLE)
	$(CPP_BINDIR)/$(EXECUTABLE)

clean:
	rm -rf $(CPP_BINDIR)/$(EXECUTABLE)*
