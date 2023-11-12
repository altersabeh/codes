CC = gcc
CFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS =
EXECUTABLE = c-hello
C_BINDIR = ../../dist/c
OBJECTS = $(patsubst %.c,%.o,$(wildcard *.c))

.PHONY: $(EXECUTABLE) build run clean help

$(EXECUTABLE): build

build: $(C_BINDIR)/$(EXECUTABLE)

$(C_BINDIR)/$(EXECUTABLE): $(C_BINDIR)/$(OBJECTS)
	@mkdir $(C_BINDIR) -p
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -o $@

$(C_BINDIR)/%.o: %.c
	@mkdir $(C_BINDIR) -p
	$(CC) -c $(CFLAGS) $< -o $@

run: $(C_BINDIR)/$(EXECUTABLE)
	@echo Running $(EXECUTABLE) program:
	@cd $(CURDIR)/$(C_BINDIR) && \
	./$(EXECUTABLE)

clean:
	@cd $(C_BINDIR) && \
	rm -rf $(EXECUTABLE) $(OBJECTS)

TITLE = Hello World
LANGUAGE = C

help:
	@echo $(EXECUTABLE) - $(TITLE) program written in $(LANGUAGE)

