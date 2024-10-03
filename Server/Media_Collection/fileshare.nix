{
    fileSystems."/media/TV" = {
        device = "192.168.2.21:/mnt/Jango/Utility/Media/TV";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };
}