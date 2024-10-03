  { config, pkgs, ... }:
  {
    services.openssh.enable = true;
    
    users.users.ryan.openssh.authorizedKeys.keyFiles = [
        /home/ryan/Infra/Server/authorized_keys
    ];
  }