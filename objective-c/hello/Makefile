OBJC = clang
MXFLAGS = -Wall -Werror -MMD -MP -DGNUSTEP -DGNUSTEP_BASE_LIBRARY=1 -DGNU_GUI_LIBRARY=1 -DGNU_RUNTIME=1 -DGNUSTEP_BASE_LIBRARY=1 -fno-strict-aliasing -fexceptions -fobjc-exceptions -D_NATIVE_OBJC_EXCEPTIONS -pthread -fPIC -Wall -DGSWARN -DGSDIAGNOSE -Wno-import -g -O2 -fconstant-string-class=NSConstantString -I. -I/home/josh/.local/share/GNUstep/Library/Headers -I/usr/local/include/GNUstep -I/usr/include/GNUstep
LDFLAGS = -lgnustep-base -lobjc
EXECUTABLE = objc-hello
OBJC_BINDIR = ../../bin/objective-c

$(EXECUTABLE):
	mkdir -p $(OBJC_BINDIR)
	$(OBJC) *.m $(MXFLAGS) $(LDFLAGS) -o $(OBJC_BINDIR)/$(EXECUTABLE)

run : $(EXECUTABLE)
	$(OBJC_BINDIR)/$(EXECUTABLE)

clean:
	rm -rf $(OBJC_BINDIR)/$(EXECUTABLE)*
