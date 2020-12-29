#!/usr/bin/zsh

cd && git clone https://aur.archlinux.org/yay.git && \
	cd yay && \
	makepkg -si PKGBUILD && \
	yay -S ly && \
	systemctl enable ly && \
	cd && \
	git clone https://github.com/RamazanYapparov/dotfiles.git && \
	cd dotfiles && \
	rsync -av home/ /home/$USER/ && \
	mkdir -p /home/$USER/.antigen/ && \
	curl -L git.io/antigen > /home/$USER/.antigen/antigen.zsh && \
	curl -s "https://get.sdkman.io" | bash