CC = gcc
CFLAGS = -Wall -Werror -g -O2 -fno-strict-aliasing -fexceptions
LDFLAGS = -lgmp
EXECUTABLE = c-fibonacci
C_BINDIR = ../../bin/c

run : $(EXECUTABLE)
	$(C_BINDIR)/$(EXECUTABLE)

$(EXECUTABLE):
	mkdir -p $(C_BINDIR)
	$(CC) *.c $(CFLAGS) $(LDFLAGS) -o $(C_BINDIR)/$(EXECUTABLE)

clean:
	rm -rf $(C_BINDIR)
