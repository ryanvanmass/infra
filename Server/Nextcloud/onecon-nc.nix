{ config, lib, pkgs, ... }:
{
  environment.etc."nextcloud-admin-pass".text = "";
  services.nextcloud = {
    enable = true;
    # configureRedis = true;
    package = pkgs.nextcloud29;
    hostName = "onecon.rdvm.ca";
    https = true;
    config.adminpassFile = "/etc/nextcloud-admin-pass";
    # autoUpdateApps.enable = true;
    # extraAppsEnable = true;
    # extraApps = with config.services.nextcloud.package.packages.apps; {
        # List of apps we want to install and are already packaged in
        # https://github.com/NixOS/nixpkgs/blob/master/pkgs/servers/nextcloud/packages/nextcloud-apps.json
        # inherit calendar notes tasks deck;
    # };
  };

  services.nginx.virtualHosts.${config.services.nextcloud.hostName} = {
    forceSSL = true;
    enableACME = true;
  };


  security.acme = {
    acceptTerms = true;
    certs = {
      ${config.services.nextcloud.hostName}.email = "ryanvanmassenhoven@gmail.com";
    };
  };
}
