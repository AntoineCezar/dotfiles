LOCAL_BIN_FILES=$(shell ls ./local/bin | sed 's@.*@~/.local/bin/&@')
SHD_FILES=$(shell ls ./config/sh.d | sed 's@.*@~/.config/sh.d/&@')
ZSHD_FILES=$(shell ls ./config/zsh.d | sed 's@.*@~/.config/zsh.d/&@')
NVIM_FILES=$(shell ls ./config/nvim | sed 's@.*@~/.config/nvim/&@')

.PHONY: default
default: local_bin_files shd_files zshd_files nvim_files

.PHONY: local_bin_files
local_bin_files: $(LOCAL_BIN_FILES) 
~/.local/bin/%: ./local/bin/%
	mkdir -p ~/.local/bin/
	ln -s $(PWD)/$^ $@

.PHONY: shd_files
shd_files: $(SHD_FILES) 
~/.config/sh.d/%: ./config/sh.d/%
	mkdir -p ~/.config/sh.d
	ln -s $(PWD)/$^ $@

.PHONY: zshd_files
zshd_files: $(ZSHD_FILES) 
~/.config/zsh.d/%: ./config/zsh.d/%
	mkdir -p ~/.config/zsh.d
	ln -s $(PWD)/$^ $@

.PHONY: nvim_files
nvim_files: $(NVIM_FILES)
~/.config/nvim/%: ./config/nvim/%
	mkdir -p $(shell dirname $@)
	ln -s $(PWD)/$^ $@
