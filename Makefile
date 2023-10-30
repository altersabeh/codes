MAKE = make --no-print-directory

LANGUAGES = c c++ objective-c
PROJECTS = hello greeter fibonacci

define BUILD_TARGET
build-$1-$2:
	cd $1/$2 && $(MAKE)
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(eval $(call BUILD_TARGET,$(lang),$(proj)))))

define RUN_TARGET
$1-$2:
	cd $1/$2 && $(MAKE) run
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(eval $(call RUN_TARGET,$(lang),$(proj)))))

define CLEAN_TARGET
$1-$2:
	cd $1/$2 && $(MAKE) clean
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(eval $(call CLEAN_TARGET,$(lang),$(proj)))))

define BUILD_PROJECT
build-$1: $(addprefix build-$1-, $(PROJECTS))
endef

$(foreach lang,$(LANGUAGES),$(eval $(call BUILD_PROJECT,$(lang))))

define CLEAN_PROJECT
clean-$1: $(addprefix clean-$1-, $(PROJECTS))
endef

$(foreach lang,$(LANGUAGES),$(eval $(call CLEAN_PROJECT,$(lang))))

message:
	@echo Specify the name of file to build !

.DEFAULT_GOAL := message

.PHONY: $(MAKECMDGOALS)
