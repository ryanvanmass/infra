{ config, lib, pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [ 443 80 ];
  services.nextcloud = {
    enable = true;
    # configureRedis = true;
    package = pkgs.nextcloud29;
    hostName = "nextcloud";
    # https = true;
    config.adminpassFile = "/etc/.nextcloud-admin-pass";
    settings = {
      trusted_domains = [
        "192.168.2.195"
      ];
    };

  };

}
