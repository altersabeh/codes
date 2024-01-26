CC = gcc
CFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS =
EXECUTABLE = c-hello
C_BINDIR = ../../dist/c
SRCDIR = src
OBJECTS = $(patsubst $(SRCDIR)/%.c,%.o,$(wildcard $(SRCDIR)/*.c))

.PHONY: $(EXECUTABLE) build run clean help

build: $(C_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE): build

$(C_BINDIR)/$(EXECUTABLE): $(C_BINDIR)/$(OBJECTS)
	@mkdir $(C_BINDIR) -p
	$(CC) $^ $(CFLAGS) $(LDFLAGS) -o $@

$(C_BINDIR)/%.o: $(SRCDIR)/%.c
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

