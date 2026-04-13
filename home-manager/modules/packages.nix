{ pkgs, inputs, ... }:
{
  home = {
    packages = with pkgs; [
      curl
      just
      onefetch
      fastfetch
      defaultbrowser
      uutils-coreutils-noprefix
      iterm2
      qbittorrent
      keepassxc
      uv
      k9s

      # steam-platform-stats
      inputs.steam-platform-stats.packages.${pkgs.system}.steam-platform-stats
    ];
  };
}
