CXX = g++
CXXFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS = -lntl -lgmp -lm
EXECUTABLE = c++-fibonacci
CPP_BINDIR = ../../bin/c++

run : $(EXECUTABLE)
	$(CPP_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE):
	mkdir -p $(CPP_BINDIR)
	$(CXX) *.cpp $(CXXFLAGS) $(LDFLAGS) -o $(CPP_BINDIR)/$(EXECUTABLE)

clean:
	rm -rf $(CPP_BINDIR)/$(EXECUTABLE)*
