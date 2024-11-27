{ config, pkgs, ... }:

{
  config = {   
    programs.starship.enable = true;
    programs.zsh = {
      enable = true;
      enableCompletion = true;
      autosuggestions.enable = true;
      syntaxHighlighting.enable = true;

      shellAliases = {
        ll = "ls -l";
        update = "sudo nixos-rebuild switch";
        ss = "sudo -s";
        mf = "touch ";
      }; 
    };
  };
}