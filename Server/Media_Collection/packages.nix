  { config, pkgs, ... }:
  {
      environment.systemPackages = with pkgs; [
        qbittorrent
        libation
        spotdl
        openvpn
        yt-dlp
      ];
  }