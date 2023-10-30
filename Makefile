MAKE = make --no-print-directory

LANGUAGES = c c++ objc
PROJECTS = hello greeter fibonacci
OPERATIONS = build run clean

define RUN_TARGET
$1-$2:
	cd $1/$2 && $(MAKE) run
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach proj,$(PROJECTS),\
		$(eval $(call RUN_TARGET,$(lang),$(proj)))))

define TARGET_OPERATION
$1-$2-$3:
	cd $2/$3 && $(MAKE) $1
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(foreach op,$(OPERATIONS),\
      $(eval $(call TARGET_OPERATION,$(op),$(lang),$(proj))))))

define PROJECT_OPERATION
$1-$2: $(addprefix $1-$2-, $(PROJECTS))
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach op,$(OPERATIONS),\
    $(eval $(call PROJECT_OPERATION,$(op),$(lang)))))

message:
	@echo Specify the name of file to build !

.DEFAULT_GOAL := message

.PHONY: $(MAKECMDGOALS) $(PROJECTS)
