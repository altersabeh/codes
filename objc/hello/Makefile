OBJC = clang
MXFLAGS = -Wall -Werror -MMD -MP -DGNUSTEP -DGNUSTEP_BASE_LIBRARY=1 -DGNU_GUI_LIBRARY=1 -DGNU_RUNTIME=1 -DGNUSTEP_BASE_LIBRARY=1 -fno-strict-aliasing -fexceptions -fobjc-exceptions -D_NATIVE_OBJC_EXCEPTIONS -pthread -fPIC -Wall -DGSWARN -DGSDIAGNOSE -Wno-import -g -O2 -fconstant-string-class=NSConstantString -I. -I/home/josh/.local/share/GNUstep/Library/Headers -I/usr/local/include/GNUstep -I/usr/include/GNUstep
LDFLAGS = -lgnustep-base -lobjc
EXECUTABLE = objc-hello
OBJC_BINDIR = ../../bin/objc
OBJECTS = $(patsubst %.m,%.o,$(wildcard *.m))
DEPS = $(patsubst %.m,%.d,$(wildcard *.m))

.PHONY: $(EXECUTABLE) build run clean help

build: $(OBJC_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE): build

$(OBJC_BINDIR)/$(EXECUTABLE): $(OBJC_BINDIR)/$(OBJECTS)
	mkdir $(OBJC_BINDIR) -p
	$(OBJC) $^ $(MXFLAGS) $(LDFLAGS) -o $@

$(OBJC_BINDIR)/%.o: %.m
	mkdir $(OBJC_BINDIR) -p
	$(OBJC) -c $(MXFLAGS) $< -o $@

run: $(OBJC_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	cd $(CURDIR)/$(OBJC_BINDIR) && \
	./$(EXECUTABLE)

clean:
	cd $(OBJC_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS) $(DEPS)

TITLE = Hello World
LANGUAGE = Objective-C

help:
	@echo $(EXECUTABLE) - $(TITLE) program written in $(LANGUAGE)
