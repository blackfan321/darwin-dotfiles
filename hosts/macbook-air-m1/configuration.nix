{
  pkgs,
  primaryUser,
  ...
}:
{
  networking.hostName = "macbook-air-m1";

  # host-specific homebrew casks
  homebrew.casks = [
    # "slack"
  ];

  # host-specific home-manager configuration
  home-manager.users.${primaryUser} = {
    home.packages = with pkgs; [
      # graphite-cli
    ];

    programs = {
      zsh = {
        initContent = ''
        '';
      };
    };
  };
}
