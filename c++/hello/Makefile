CXX = g++
CXXFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS =
EXECUTABLE = c++-hello
CPP_BINDIR = ../../bin/c++
OBJECTS = $(patsubst %.cpp,%.o,$(wildcard *.cpp))

.PHONY: $(EXECUTABLE) build run clean help

$(EXECUTABLE): build

build: $(CPP_BINDIR)/$(EXECUTABLE)

$(CPP_BINDIR)/$(EXECUTABLE): $(CPP_BINDIR)/$(OBJECTS)
	mkdir $(CPP_BINDIR) -p
	$(CXX) $^ $(CXXFLAGS) $(LDFLAGS) -o $@

$(CPP_BINDIR)/%.o: %.cpp
	mkdir $(CPP_BINDIR) -p
	$(CXX) -c $(CXXFLAGS) $< -o $@

run: $(CPP_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	cd $(CURDIR)/$(CPP_BINDIR) && \
	./$(EXECUTABLE)

clean:
	cd $(CPP_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS)

TITLE = Hello World
LANGUAGE = C++

help:
	@echo $(EXECUTABLE) - $(TITLE) written in $(LANGUAGE)
