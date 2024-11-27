{ config, pkgs, ... }:

{
  config = {
  environment.systemPackages = with pkgs; [
    # archive utilities
    zip
    xz
    unzip
    p7zip
    gzip
    gzrt
    # find utils
    ripgrep
    fzf
    # cli tools
    tmux
    neofetch
    eza
    tree
    # networking tools
    mtr # A network diagnostic tool
    iperf3  # A tool to measure network performance
    dnsutils  # `dig` + `nslookup`
    aria2 # A lightweight multi-protocol & multi-source command-line download utility
    socat # replacement of openbsd-netcat
    # productivity
    glow # markdown previewer in terminal
    btop  # replacement of htop/nmon
    iotop # io monitoring
    iftop # network monitoring
    # system call monitoring
    strace # system call monitoring
    ltrace # library call monitoring
    lsof # list open files
    # system tools
    sysstat # sar, iostat, mpstat, pidstat, sadf
    lm_sensors # for `sensors` command
    ethtool # for `ethtool` command
    pciutils # lspci
    usbutils # lsusb
    # provisioning
    disko # Declarative disk partitioning and formatting using nix

    # low level tools
    binutils # A collection of binary tools
    
    #misc
    ffmpeg_7-full # A complete, cross-platform solution to record, convert and stream audio and video
    imagemagick # A software suite to create, edit, compose, or convert bitmap images
    python3 # A high-level programming language
    gcc-unwrapped # The GNU Compiler Collection - C and C++ frontends
    gnumake # GNU version of 'make' utility
  ];

  };
}