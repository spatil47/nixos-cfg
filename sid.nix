{ config, pkgs, ... }: {

	users.extraUsers.sid = {
		isNormalUser = true;
		extraGroups = [ "wheel" "vboxusers" "networkmanager" "dialout" ];
		shell = "${pkgs.fish}/bin/fish";
	};
	
	programs.fish.enable = true;

	environment.systemPackages = with pkgs; [
		gparted
		meld
		mosh
		vim
		emacs
		evince
		unison
		tmux
		xfce.terminal
		gitg
		pidgin
		pasystray
		xorg.xev
		texlive.combined.scheme-full biber
		gimp
		geeqie
		hugin
		jhead
		audacity
		mpv
		audacious
		youtube-dl
		thunderbird
		zip unzip p7zip unrar
		wine
		fgallery
		filezilla
		bleachbit
		moreutils
		eagle
		system-config-printer
		blink
		avrgcclibc
		avrdude avrdudess
		calc
		gcc
		gdb
		wireshark
		gnumake
	];

	virtualisation.virtualbox.host.enable = true;

	hardware.opengl.driSupport32Bit = true;

	services.xserver.windowManager.awesome.enable = true;

	fonts = {
		enableFontDir = true;
		enableGhostscriptFonts = true;
		fonts = with pkgs; [
			inconsolata
			terminus_font
			lato
		];
	};
}
