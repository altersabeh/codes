MAKE = make
LANGUAGES = c c++ objc
PROJECTS = hello greeter fibonacci
OPERATIONS = run clean

define RUN_TARGET
$1-$2:
	@cd $1/$2 && $(MAKE) run
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach proj,$(PROJECTS),\
		$(eval $(call RUN_TARGET,$(lang),$(proj)))))

define BUILD_TARGET
build-$1-$2:
	@cd $1/$2 && $(MAKE)
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach proj,$(PROJECTS),\
		$(eval $(call BUILD_TARGET,$(lang),$(proj)))))

define HELP_TARGET
help-$1-$2:
	@cd $1/$2 && $(MAKE) --no-print-directory help
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach proj,$(PROJECTS),\
    $(eval $(call HELP_TARGET,$(lang),$(proj)))))

define TARGET_OPERATION
$1-$2-$3:
	cd $2/$3 && $(MAKE) $1
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(foreach op,$(OPERATIONS),\
      $(eval $(call TARGET_OPERATION,$(op),$(lang),$(proj))))))

help-c: _help-c-message
	@echo

help-c++: _help-c++-message
	@echo

help-objc: _help-objc-message
	@echo

define PROJECT_OPERATION
$1-$2: $(addprefix $1-$2-, $(PROJECTS))
endef

OPERATIONS += build help

$(foreach lang,$(LANGUAGES),\
	$(foreach op,$(OPERATIONS),\
    $(eval $(call PROJECT_OPERATION,$(op),$(lang)))))

help:
	@echo "To run a task, run make <task> ..."
	@echo
	@echo "To see a list of available targets, run make targets"
	@echo
	@echo	"Language supported: C, C++, Objective-C"
	@echo "Available operations for each targets:"
	@echo "    build, run, clean, help"
	@echo
	@echo "Example task: make build-c++-hello // builds hello in c++"
	@echo "              make clean-c++-hello // cleans build artifacts"
	@echo "              make build-c++       // builds all c++ targets"
	@echo "              make build           // builds all targets"

targets: help-c help-c++ help-objc
	@echo "Available operations for each targets:"
	@echo "    build, run, clean, help"

_help-c-message:
	@echo "C Applications"
	@echo --------------

_help-c++-message:
	@echo "C++ Applications"
	@echo ----------------

_help-objc-message:
	@echo "Objective-C Applications"
	@echo ------------------------

.DEFAULT_GOAL := help

.PHONY: $(MAKECMDGOALS) $(PROJECTS)
