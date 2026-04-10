{ pkgs, ... }:

{
  system.primaryUser = "blackfan321";
  users.users.blackfan321 = {
    home = "/Users/blackfan321";
    shell = pkgs.zsh;
  };
  environment = {
    systemPath = [
      "/opt/homebrew/bin"
    ];
    pathsToLink = [ "/Applications" ];
  };
}
