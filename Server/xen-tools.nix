{ config, pkgs, ... }:
{
    services.xe-guest-utilities.enable = pkgs.stdenv.hostPlatform.isx86;

}
