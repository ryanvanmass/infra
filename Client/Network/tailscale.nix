  { config, pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        tailscale
    ];
    # Enable Tailscale services
    services.tailscale.enable = true;

    # Fix Tailscale braking when mounting SMB Shares
    networking.firewall.checkReversePath = "loose";
}