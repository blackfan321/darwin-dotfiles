{ primaryUser, ... }:
{
  imports = [
    ./packages.nix
    ./git.nix
    ./zsh.nix
    ./firefox.nix
    ./vim.nix
    ./fzf.nix
    ./direnv.nix
  ];

  home = {
    username = primaryUser;
    stateVersion = "25.05";
    sessionVariables = {
      # shared environment variables
    };

    # create .hushlogin file to suppress login messages
    file.".hushlogin".text = "";
  };
}
