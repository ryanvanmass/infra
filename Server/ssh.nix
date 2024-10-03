  { config, pkgs, ... }:
  {
    services.openssh.enable = true;
    
    users.users."user".openssh.authorizedKeys.keyFiles = [
        /home/ryan/Server/authorized_keys
    ];
  }