  { config, pkgs, ... }:
  {
      environment.systemPackages = with pkgs; [
        qbittorrent
        libation
        spotdl
        openvpn
        youtube-dl
      ];
  }