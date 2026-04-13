{
  programs.git = {
    enable = true;

    settings = {
      user.name = "Ivan Batrakov";
      user.email = "blackfan321@gmail.com";
      github.user = "blackfan321";
      init.defaultBranch = "main";
    };

    lfs.enable = true;

    ignores = [ "**/.DS_STORE" ];

  };
}
