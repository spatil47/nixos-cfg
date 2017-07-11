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
	
	services.avahi = {
		enable = true;
		ipv6 = true;
		interfaces = [ "enp7s0" "wlp6s0" ];
		nssmdns = true;
		publish.enable = true;
	};

	hardware.pulseaudio.enable = true;
}
