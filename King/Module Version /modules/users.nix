{ config, pkgs, ... }:

{
  config = {
    users.defaultUserShell = pkgs.zsh;
    users.users.mark = {
      isNormalUser = true;
      description = "mark";
      extraGroups = [ "networkmanager" "wheel" "libvirtd" "lxd" "systemd-journal" "podman"]; # "vbox" "vboxusers"
      openssh.authorizedKeys.keys = [
        # Replace with your own public key
        ""
      ];    
    packages = with pkgs; [];
    };
  };
}
