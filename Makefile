MAKE = make --no-print-directory

LANGUAGES = c c++ objc
PROJECTS = hello greeter fibonacci
OPERATIONS = build run clean

define OPERATION_TARGET
$1-$2-$3:
	cd $2/$3 && $(MAKE) $1
endef

$(foreach lang,$(LANGUAGES),\
  $(foreach proj,$(PROJECTS),\
    $(foreach op,$(OPERATIONS),\
      $(eval $(call OPERATION_TARGET,$(op),$(lang),$(proj))))))

define PROJECT_TARGET
$1-$2: $(addprefix $1-$2-, $(PROJECTS))
endef

$(foreach lang,$(LANGUAGES),\
	$(foreach op,$(OPERATIONS),\
    $(eval $(call PROJECT_TARGET,$(op),$(lang)))))

message:
	@echo Specify the name of file to build !

.DEFAULT_GOAL := message

.PHONY: $(MAKECMDGOALS) $(PROJECTS)