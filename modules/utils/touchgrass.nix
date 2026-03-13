{
  systemd.user.services.touchgrass = {
    Service = {
      Type = "oneshot";
      ExecStart = "notify-send 'Reminder' 'Touch Grass'";
    };
  };

  systemd.user.timers.touchgrass = {
    WantedBy = [ "timers.target" ];
    Timer = {
      OnCalendar = "*:0,30";
    };
  };
}
