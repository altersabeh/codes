MAKE = make
LANGUAGES = c c++ objc cuda
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

help-cuda: _help-cuda-message
	@echo

define PROJECT_OPERATION
$1-$2: $(addprefix $1-$2-, $(PROJECTS))
endef

OPERATIONS += build help

$(foreach lang,$(LANGUAGES),\
	$(foreach op,$(OPERATIONS),\
    $(eval $(call PROJECT_OPERATION,$(op),$(lang)))))

help:
	@echo "To run a task, \033[1mrun make <task> ...\033[0m"
	@echo
	@echo "To see a list of available targets, \033[1mrun make targets\033[0m"
	@echo
	@echo	"Language supported: \033[1mC, C++, Objective-C, CUDA\033[0m"
	@echo "Available operations for each targets:"
	@echo "    \033[1mbuild, run, clean, help\033[0m"
	@echo
	@echo "Example task: \033[1mmake build-c++-hello\033[0m // builds hello in c++"
	@echo "              \033[1mmake clean-c++-hello\033[0m // cleans build artifacts"
	@echo "              \033[1mmake build-c++\033[0m       // builds all c++ targets"
	@echo "              \033[1mmake build\033[0m           // builds all targets"

targets: help-c help-c++ help-objc
	@echo "\033[1mAvailable operations for each targets:\033[0m"
	@echo "    build, run, clean, help"

_help-c-message:
	@echo "\033[1mC Applications\033[0m"
	@echo "\033[1m--------------\033[0m"

_help-c++-message:
	@echo "\033[1mC++ Applications\033[0m"
	@echo "\033[1m----------------\033[0m"

_help-objc-message:
	@echo "\033[1mObjective-C Applications\033[0m"
	@echo "\033[1m------------------------\033[0m"

_help-cuda-message:
	@echo "\033[1mCUDA Applications\033[0m"
	@echo "\033[1m----------------\033[0m"

.DEFAULT_GOAL := help

.PHONY: $(MAKECMDGOALS) $(PROJECTS)
