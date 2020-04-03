config_folder=~/.config/cove/
local_bin_folder=~/.local/bin/

install:
	mkdir -p ${config_folder}
	mkdir -p ${local_bin_folder}
	cp ./fzf_format.rsc ${config_folder}
	cp ./key_format.rsc ${config_folder}
	cp ./cove ${local_bin_folder}
