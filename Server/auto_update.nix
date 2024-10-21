{ config, pkgs, ... }:
{
  system.autoUpgrade = {
    enable = true;
    # flake = inputs.self.outPath;
    flags = [
      "--update-input"
      "nixpkgs"
      "-L" # print build logs
    ];
    dates = "04:00";
    randomizedDelaySec = "45min";
  };    
}