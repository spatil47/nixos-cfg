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
		git
		firefox chromium
		arandr 
		pavucontrol
		libreoffice
		usbutils pciutils lsof
		traceroute
		acpi
	];

	services.printing = {
		enable = true;
		drivers = [ pkgs.gutenprint ];
	};

	hardware.pulseaudio.enable = true;
}
