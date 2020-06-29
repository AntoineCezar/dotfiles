BIN_FILES=$(shell ls ./local/bin | sed 's@.*@~/.local/bin/&@')
SHD_FILES=$(shell ls ./config/sh.d | sed 's@.*@~/.config/sh.d/&@')
ZSHD_FILES=$(shell ls ./config/zsh.d | sed 's@.*@~/.config/zsh.d/&@')
NVIM_FILES=$(shell ls ./config/nvim | sed 's@.*@~/.config/nvim/&@')

.PHONY: install
install: bin sh zsh nvim

.PHONY: bin
bin: $(BIN_FILES)

.PHONY: sh
sh: $(SHD_FILES)

.PHONY: zsh
zsh: ~/.zshrc $(ZSHD_FILES)
~/.zshrc: zshrc
	ln -s $(PWD)/zshrc $@

.PHONY: nvim
nvim: $(NVIM_FILES)

~/.local/bin/%: ./local/bin/%
	mkdir -p $(shell dirname $@)
	ln -s $(PWD)/$^ $@

~/.config/%: ./config/%
	mkdir -p $(shell dirname $@)
	ln -s $(PWD)/$^ $@
