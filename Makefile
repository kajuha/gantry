ADDIN_PKGS = aliencontrol gantry_startup test_gantry yapper
DEFAULT_PKGS = gantry_robot
REPO = https://github.com/kajuha
all:
	$(foreach var, $(ADDIN_PKGS), git submodule add $(REPO)/$(var).git src/$(var);)
	$(foreach var, $(DEFAULT_PKGS), git submodule add $(REPO)/$(var).git src/$(var);)