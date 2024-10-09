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
    angryipscanner
    onlyoffice-bin_latest
  ];
  
  # Enable Flatpak
  services.flatpak.enable = true;
  virtualisation.docker.enable = true;

}
