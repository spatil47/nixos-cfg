{ config, pkgs, ... }: {
	nixpkgs.config = {
		firefox = {
			enableGoogleTalkPlugin = true;
			enableAdobeFlash = true;
		};
		chromium = {
			enablePepperFlash = true;
			enablePepperPDF = true;
		};
		allowUnfree = true;
	};

	environment.systemPackages = with pkgs; [
		firefox chromium
		arandr 
		pasystray
		pavucontrol
		libreoffice
	];
}
