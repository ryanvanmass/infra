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
    # joplin-desktop # Install via Flatpak due to version issue
    moonlight-qt
    rclone
    rclone-browser
    angryipscanner
    onlyoffice-bin_latest
    nextcloud-client
    virtualbox
  ];
  
  # Enable Flatpak
  services.flatpak.enable = true;
  virtualisation.docker.enable = true;
  virtualisation.virtualbox.host.enable = true

}
