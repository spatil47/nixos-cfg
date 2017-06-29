{ config, pkgs, ... }: {

	users.extraUsers.sid = {
		isNormalUser = true;
		extraGroups = [ "wheel" "vboxusers" "networkmanager" "dialout" "docker" ];
		shell = "${pkgs.fish}/bin/fish";
	};
	
	programs.fish.enable = true;

	environment.systemPackages = with pkgs; [
		gparted
		meld
		mosh
		vim
		joe
		emacs
		evince
		unison
		tmux
		xfce.terminal
		gitg
		pidgin
		pasystray
		xorg.xev
		texlive.combined.scheme-full biber ghostscript
		gimp
		inkscape
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
		system-config-printer
		blink
		avrgcclibc
		avrdude avrdudess
		calc
		gcc gdb
		gnumake
		wireshark
		gensgs
		ganttproject-bin
		openjdk	icedtea8_web
		remmina
		wirelesstools
		arduino
		eagle
		fritzing
		kicad
		python2Full
		(python35.withPackages(ps: with ps; [ numpy jupyter matplotlib pandas pyserial wrapt]))
		putty
		gnuplot
		chirp
		mosquitto
		mosh
		nmap-graphical
	];
	
	virtualisation.docker.enable = true;
	virtualisation.virtualbox.host.enable = true;
	nixpkgs.config.virtualbox.enableExtensionPack = true;

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
