{ config, pkgs, ... }: {

	users.extraUsers.sid = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};

	environment.systemPackages = with pkgs; [
		meld
		mosh
		vim
		emacs
		evince
		unison
		tmux
		xfce.terminal
		git
		pidgin
		pasystray
		xorg.xev
		texlive.combined.scheme-basic
		gimp
		geeqie
		audacity
		mpv audacious
		youtube-dl
		thunderbird
		zip unzip
		wine
		fgallery
		filezilla
	];

	hardware.opengl.driSupport32Bit = true;

	services.xserver.windowManager.awesome.enable = true;

	fonts = {
		enableFontDir = true;
		enableGhostscriptFonts = true;
		fonts = with pkgs; [
			inconsolata
			terminus_font
		];
	};
}
