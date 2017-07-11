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
		youtube-dl
		thunderbird
		zip unzip p7zip unrar
		wine
		fgallery
		filezilla
		bleachbit
		blink
		avrgcclibc
		avrdude avrdudess
		calc
		gcc gdb
		gnumake
		wireshark
		gensgs
		openjdk	icedtea8_web
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
		qgis
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
