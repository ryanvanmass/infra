{ self, config, lib, pkgs, ... }: {
  # Original Insperation: https://carjorvaz.com/posts/the-holy-grail-nextcloud-setup-made-easy-by-nixos/
  # Based on: https://github.com/JupiterBroadcasting/nixconfigs/blob/main/nextcloud.nix

  services = {
    nextcloud = {
      enable = true;
      hostName = "cloud.rdvm.ca";
      # Need to manually increment with every major upgrade.
      package = pkgs.nextcloud29;
      # Let NixOS install and configure the database automatically.
      database.createLocally = true;
      # Let NixOS install and configure Redis caching automatically.
      configureRedis = true;
      # Increase the maximum file upload size.
      # maxUploadSize = "16G";
      # https = true;
      # autoUpdateApps.enable = true;
      # extraAppsEnable = true;
      # extraApps = with config.services.nextcloud.package.packages.apps; {
        # List of apps we want to install and are already packaged in
        # https://github.com/NixOS/nixpkgs/blob/master/pkgs/servers/nextcloud/packages/nextcloud-apps.json
      #  inherit calendar contacts notes onlyoffice tasks qownnotesapi;
        # Custom app example.
        # socialsharing_telegram = pkgs.fetchNextcloudApp rec {
          # url =
            # "https://github.com/nextcloud-releases/socialsharing/releases/download/v3.0.1/socialsharing_telegram-v3.0.1.tar.gz";
          # license = "agpl3";
          # sha256 = "sha256-8XyOslMmzxmX2QsVzYzIJKNw6rVWJ7uDhU1jaKJ0Q8k=";
        #  };
      # };
      settings = {
       # overwriteProtocol = "https";
       # default_phone_region = "US";
      };
      config = {
        dbtype = "pgsql";
        adminuser = "admin";
        adminpassFile = "/posgresssql";
      };
      # Suggested by Nextcloud's health check.
      phpOptions."opcache.interned_strings_buffer" = "16";
    };
    # Nightly database backups.
    postgresqlBackup = {
      enable = true;
      startAt = "*-*-* 01:15:00";
    };
  };
}

