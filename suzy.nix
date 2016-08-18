{ config, pkgs, ... }:
{
  users.extraUsers.suzy = {
     isNormalUser = true;
  };

services.xserver.displayManager.lightdm.enable = true;
services.xserver.desktopManager.xfce.enable = true;

environment.systemPackages = with pkgs; [
	bomi
	galculator
	];

}
