CXX = g++
CXXFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS = -lntl -lgmp -lm
EXECUTABLE = c++-fibonacci
CPP_BINDIR = ../../dist/c++
SRCDIR = src
OBJECTS = $(patsubst $(SRCDIR)/%.cpp,%.o,$(wildcard $(SRCDIR)/*.cpp))

.PHONY: $(EXECUTABLE) build run clean help

build: $(CPP_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE): build

$(CPP_BINDIR)/$(EXECUTABLE): $(CPP_BINDIR)/$(OBJECTS)
	@mkdir $(CPP_BINDIR) -p
	$(CXX) $^ $(CXXFLAGS) $(LDFLAGS) -o $@

$(CPP_BINDIR)/%.o: $(SRCDIR)/%.cpp
	@mkdir $(CPP_BINDIR) -p
	$(CXX) -c $(CXXFLAGS) $< -o $@

run: $(CPP_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	@cd $(CURDIR)/$(CPP_BINDIR) && \
	./$(EXECUTABLE)

clean:
	@cd $(CPP_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS)

TITLE = Fibonacci
LANGUAGE = C++

help:
	@echo $(EXECUTABLE) - $(TITLE) program written in $(LANGUAGE)
