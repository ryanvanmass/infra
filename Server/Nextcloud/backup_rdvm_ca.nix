{ config, lib, pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [ 443 80 ];
  services.nextcloud = {
    enable = true;
    # configureRedis = true;
    package = pkgs.nextcloud29;
    hostName = "nextcloud";
    # https = true;
    config.adminpassFile = "/home/ryan/Infra/Server/Nextcloud/.nextcloud-admin-pass";

  };

}
