{ pkgs, inputs, ... }:
{
  home = {
    packages = with pkgs; [
      curl
      just
      onefetch
      fastfetch
      uutils-coreutils-noprefix
      iterm2
      qbittorrent
      keepassxc

      # steam-platform-stats
      inputs.steam-platform-stats.packages.${pkgs.system}.steam-platform-stats
    ];
  };
}
