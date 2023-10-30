CC = gcc
CFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS =
EXECUTABLE = c-greeter
C_BINDIR = ../../bin/c

$(EXECUTABLE):
	mkdir -p $(C_BINDIR)
	$(CC) *.c $(CFLAGS) $(LDFLAGS) -o $(C_BINDIR)/$(EXECUTABLE)

build: $(EXECUTABLE)

run: $(EXECUTABLE)
	$(C_BINDIR)/$(EXECUTABLE)

clean:
	rm -rf $(C_BINDIR)/$(EXECUTABLE)*
