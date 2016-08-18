{ config, pkgs, ... }: {

users.extraUsers.sid = {
	isNormalUser = true;
	extraGroups = [ "wheel" ];
	};

environment.systemPackages = with pkgs; [
	nix-repl
	vim emacs
	unison
	tmux
	xfce.terminal
	git
	pidgin
	texlive.combined.scheme-basic 
];

services.xserver.windowManager.awesome.enable = true;

}
