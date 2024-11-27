{ config, pkgs, ... }:

{
  config = {
  environment.systemPackages = with pkgs; [
    # text editors
    libreoffice-fresh
    geany
    marktext


    #Browsers
    firefox
    vivaldi
    google-chrome
    brave
    opera

    #Media
    vlc
    spotify
    shotcut
    simplescreenrecorder

    #Communication
    thunderbird

    # support
    # rustdesk
    
    # Dev Tools
    terminator
    kdiff3
    vscode
    filezilla
    libfilezilla
    mailcatcher

    #irc like
    telegram-desktop
    slack
    discord
    zoom-us

    # networking
    angryipscanner
    zmap
    netscanner
    iperf3d
    netbird-ui
  
    # disk tools
    gparted
    smartmontools
    gsmartcontrol

    # system tools
    nagios # network monitoring key CSP50

    # repair
    wxhexeditor

  ];

  };
}