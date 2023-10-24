MAKE = make --no-print-directory

default:
	@echo Specify the name of file to build !

c-hello:
	cd c/hello && $(MAKE) run

c-greeter:
	cd c/greeter && $(MAKE) run

c++-hello:
	cd c++/hello && $(MAKE) run

c++-greeter:
	cd c++/greeter && $(MAKE) run

objc-hello:
	cd objective-c/hello && $(MAKE) run

objc-greeter:
	cd objective-c/greeter && $(MAKE) run

.PHONY: $(MAKECMDGOALS)
