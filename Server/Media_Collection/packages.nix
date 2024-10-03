  { config, pkgs, ... }:
  {
      environment.systemPackages = with pkgs; [
        qbittorrent
        libation
        spotdl
        openv2pn
      ];
  }