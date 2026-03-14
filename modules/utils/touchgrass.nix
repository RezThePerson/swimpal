{pkgs, ...}:
{
  systemd.user.services.touchgrass = {
    description = "Touch grass reminder";

    serviceConfig = {
      Type = "oneshot";
      ExecStart = "${pkgs.libnotify}/bin/notify-send 'Reminder' 'Touch Grass'";
    };
  };

  systemd.user.timers.touchgrass = {
    wantedBy = [ "timers.target" ];

    timerConfig = {
      OnCalendar = "*:0,30";
      Persistent = true;
    };
  };
}
