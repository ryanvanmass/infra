{
  fileSystems."/media/Olympus" = {
    device = "//192.168.2.21/Olympus";
    fsType = "cifs";
    options = [ "credentials=/home/ryan/.smb" "x-systemd.automount" "nofail" "noauto" "noperm" ];
  };
  
  fileSystems."/media/Hades" = {
    device = "//192.168.2.21/Hades";
    fsType = "cifs";
    options = [ "credentials=/home/ryan/.smb" "x-systemd.automount" "nofail" "noauto" "noperm" ];
  };
}
