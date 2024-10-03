  { config, pkgs, ... }:
  {
    services.openssh = {
        enable = true;
        settings.PasswordAuthentication = false;
    };
    
    users.users.ryan.openssh.authorizedKeys.keyFiles = [
        /home/ryan/Infra/Server/authorized_keys
    ];
  }