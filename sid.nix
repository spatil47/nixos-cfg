{ config, pkgs, ... }: {

	users.extraUsers.sid = {
		isNormalUser = true;
		extraGroups = [ "wheel" ];
	};

	environment.systemPackages = with pkgs; [
		nix-repl
		meld
		mosh
		vim emacs
		unison
		tmux
		xfce.terminal
		lxappearance
		git
		pidgin
		pasystray
		xorg.xev
		texlive.combined.scheme-basic
		gimp
		audacity
		mpv
		youtube-dl
		thunderbird
		deadbeef
		zotero
	];

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
