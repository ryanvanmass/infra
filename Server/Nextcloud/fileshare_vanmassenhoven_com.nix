{ config, lib, pkgs, ... }:
{
  networking.firewall.allowedTCPPorts = [ 443 80 ];
  services.nextcloud = {
    enable = true;
    configureRedis = true;
    package = pkgs.nextcloud30;
    hostName = "file share.vanmassenhoven.com";
    https = true;
    config.adminpassFile = "/etc/nextcloud-admin-pass";
    settings = {
      overwriteProtocol = "https";
      trusted_domains = [
        ""
      ];
    };
    # autoUpdateApps.enable = true;
    # extraAppsEnable = true;
    # extraApps = with config.services.nextcloud.package.packages.apps; {
        # List of apps we want to install and are already packaged in
        # https://github.com/NixOS/nixpkgs/blob/master/pkgs/servers/nextcloud/packages/nextcloud-apps.json
        # inherit calendar notes tasks deck;
    # };
  };

}
