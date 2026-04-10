{ primaryUser, ... }:
{
  programs.git = {
    enable = true;

    settings = {
      user.name = "Ivan Batrakov";
      user.email = "blackfan321@gmail.com";
    };

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
