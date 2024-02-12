OBJC = clang
MXFLAGS = $(shell gnustep-config --objc-flags)
LDFLAGS = -lgnustep-base -lobjc -lcrypto
EXECUTABLE = objc-fibonacci
OBJC_BINDIR = ../../dist/objc
SRCDIR = src
OBJECTS = $(patsubst $(SRCDIR)/%.m,%.o,$(wildcard $(SRCDIR)/*.m))
DEPS = $(patsubst $(SRCDIR)/%.m,%.d,$(wildcard $(SRCDIR)/*.m))

.PHONY: $(EXECUTABLE) build run clean help

build: $(OBJC_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE): build

$(OBJC_BINDIR)/$(EXECUTABLE): $(OBJC_BINDIR)/$(OBJECTS)
	@mkdir $(OBJC_BINDIR) -p
	$(OBJC) $^ $(MXFLAGS) $(LDFLAGS) -o $@

$(OBJC_BINDIR)/%.o: $(SRCDIR)/%.m
	@mkdir $(OBJC_BINDIR) -p
	$(OBJC) -c $(MXFLAGS) $< -o $@

run: $(OBJC_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	@echo
	@cd $(CURDIR)/$(OBJC_BINDIR) && \
	./$(EXECUTABLE)
	@echo

clean:
	@cd $(OBJC_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS) $(DEPS)

TITLE = Fibonacci
LANGUAGE = Objective-C

help:
	@echo $(EXECUTABLE) - $(TITLE) program written in $(LANGUAGE)
