  { config, pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    vim
    nano
    wget
    git
    htop
    vscode
    docker
    google-chrome
    joplin-desktop
    moonlight-qt
    rclone
    rclone-browser
  ];
}