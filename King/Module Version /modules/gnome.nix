{ config, pkgs, ... }:

{
  config = {

  services.xserver.displayManager.gdm.enable = true;
  services.xserver.desktopManager.gnome.enable = true;

  programs.seahorse.enable = true;
  programs.nautilus-open-any-terminal = {
    enable = true;
    terminal = "terminator";
  };
    
  environment.systemPackages = with pkgs; [
    gnome-usage
    gnome.cheese
    gnome.dconf-editor
    gnome.gnome-tweaks
    gnomeExtensions.gsconnect
    gnomeExtensions.force-quit
    gnomeExtensions.systemd-manager
    gnome.nautilus-python
    nautilus-open-any-terminal
  ];
  #exclude some Gnome Packages
  environment.gnome.excludePackages = with pkgs;[
    gnome.geary # email
    epiphany # web browser
    gnome.gnome-maps
    gnome.gnome-weather
    gnome-tour
  ];

  };
}