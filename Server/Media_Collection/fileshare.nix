{
    fileSystems."/media/TV" = {
        device = "192.168.2.21:/mnt/Jango/Utility/Media/TV";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/media/Movies" = {
        device = "192.168.2.21:/mnt/Jango/Utility/Media/Movie";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/media/Music" = {
        device = "192.168.2.21:/mnt/Jango/Utility/Media/Music";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };

    fileSystems."/media/Audiobook" = {
        device = "192.168.2.21:/mnt/Jango/Utility/Media/Audiobooks";
        fsType = "nfs";
        options = [ "x-systemd.automount" "noauto" ];
    };
}
