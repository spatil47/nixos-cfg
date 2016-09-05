{ config, pkgs, ... }: {

	users.extraUsers.sid = {
		isNormalUser = true;
		extraGroups = [ "wheel" "vboxusers" ];
	};

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
		texlive.combined.scheme-full
		gimp
		geeqie
		hugin
		jhead
		audacity
		mpv
		audacious
		youtube-dl
		thunderbird
		zip unzip p7zip
		wine
		fgallery
		filezilla
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
		];
	};
}
