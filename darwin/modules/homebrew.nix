{
  homebrew = {
    enable = true;

    onActivation = {
      autoUpdate = false;
      upgrade = true;
      cleanup = "zap";
    };

    global.brewfile = true;

    casks = [
      "zed"
      "amneziavpn"
      "hot"
      "vlc"
      "openvpn-connect"
      "steam"
      "openinterminal"
    ];

    masApps = {
      "Telegram" = 747648890;
      "Lookupper" = 1667225994;
      "Windows App" = 1295203466;
    };

    brews = [
      "mas"
      "colima"
    ];
  };
}
