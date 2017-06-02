{ config, pkgs, ... }: {
	users.extraUsers.suzy = {
		isNormalUser = true;
	};

	services.xserver.desktopManager.xfce.enable = true;

	environment.systemPackages = with pkgs; [
		bomi
		qalculator
	];
}
