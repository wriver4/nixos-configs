{ config, pkgs, ... }:

{
  config = {
  environment.systemPackages = [
    pkgs.rustdesk
  ];
};
}