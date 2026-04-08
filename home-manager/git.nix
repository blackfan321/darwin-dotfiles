{ primaryUser, ... }:
{
  programs.git = {
    enable = true;
    userName = "Ivan Batrakov"; # TODO replace
    userEmail = "blackfan321@gmail.com"; # TODO replace

    lfs.enable = true;

    ignores = [ "**/.DS_STORE" ];

    extraConfig = {
      github = {
        user = primaryUser;
      };
      init = {
        defaultBranch = "main";
      };
    };
  };
}
